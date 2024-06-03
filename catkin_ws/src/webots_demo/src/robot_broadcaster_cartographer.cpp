/************************************************* 
Copyright:Webots Demo
Author: 锡城筱凯
Date:2021-06-30 
Blog：https://blog.csdn.net/xiaokai1999
Description:Webots Demo 机器人在cartographer建图算法下专用启动程序
**************************************************/  
#include <signal.h>
#include <geometry_msgs/PointStamped.h>
#include <sensor_msgs/Imu.h>
#include <nav_msgs/Odometry.h>
#include <rosgraph_msgs/Clock.h>
#include <tf/transform_broadcaster.h>

#include <webots_ros.h>

ros::NodeHandle *n;

const int TIME_STEP = 32;                   // 时钟
const int NMOTORS = 2;                      // 电机数量
const float MAX_SPEED = 2.0;                // 电机最大速度
const std::string ROBOT_NAME = "robot/";    // ROBOT名称 

static int controllerCount;
static std::vector<std::string> controllerList; 

ros::Publisher odompub;                     // 发布odom topic

double GPSvalues[4];                        // GPS数据
int gps_flag=1;                             // 记录第一次gps数据用的标志位
double Inertialvalues[4];                   // IMU数据
double liner_speed=0,angular_speed=0;       // 暂存的线速度和角速度,

Webots w = Webots(TIME_STEP,ROBOT_NAME);

/*******************************************************
* Function name ：controllerNameCallback
* Description   ：控制器名回调函数，获取当前ROS存在的机器人控制器
* Parameter     ：
        @name   控制器名
* Return        ：无
**********************************************************/
void controllerNameCallback(const std_msgs::String::ConstPtr &name) { 
    controllerCount++; 
    controllerList.push_back(name->data);//将控制器名加入到列表中
    ROS_INFO("Controller #%d: %s.", controllerCount, controllerList.back().c_str());
}

/*******************************************************
* Function name ：quit
* Description   ：退出函数
* Parameter     ：
        @sig   退出信号
* Return        ：无
**********************************************************/
void quit(int sig) {
    w.Quit(n);
}

/*******************************************************
* Function name ：broadcastTransform
* Description   ：机器人TF坐标系转换发布函数
* Parameter     ：无
* Return        ：无
**********************************************************/
void broadcastTransform(){
    static tf::TransformBroadcaster br;
    tf::Transform transform;
    // 设置原点，和gmapping算法不太一样，这边计算出一个相对于第一次记录的GPS数据的位置
    transform.setOrigin(tf::Vector3(GPSvalues[0]-GPSvalues[2],GPSvalues[1]-GPSvalues[3],0));
    // 设置四元数，机器人位姿
    tf::Quaternion q(Inertialvalues[0],Inertialvalues[2],Inertialvalues[1],-Inertialvalues[3]);
    transform.setRotation(q);
    // 发布base_link相对于odom的坐标系关系
    br.sendTransform(tf::StampedTransform(transform,ros::Time::now(),"odom","base_link"));
    transform.setIdentity();
    // 发布激光雷达相对于base_link的坐标系关系
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "robot/Sick_LMS_291"));
}

/*******************************************************
* Function name ：send_odom_data
* Description   ：由于Cartographer参数使用odom数据，通过这个函数发布odom数据
* Parameter     ：无
* Return        ：无
**********************************************************/
void send_odom_data()
{
    nav_msgs::Odometry odom;
    odom.header.frame_id = "odom";
    odom.child_frame_id = "base_link";
    odom.header.stamp = ros::Time::now();
    odom.pose.pose.position.x = GPSvalues[0]-GPSvalues[2];
    odom.pose.pose.position.y = GPSvalues[1]-GPSvalues[3];
    odom.pose.pose.position.z = 0;

    odom.pose.pose.orientation.x = Inertialvalues[0];
    odom.pose.pose.orientation.y = Inertialvalues[2];
    odom.pose.pose.orientation.z = Inertialvalues[1];
    odom.pose.pose.orientation.w = -Inertialvalues[3];

    odom.twist.twist.linear.x = liner_speed;
    odom.twist.twist.angular.z = angular_speed;

    odompub.publish(odom);
}

/*******************************************************
* Function name ：gpsCallback
* Description   ：gps数据回调函数
* Parameter     ：
        @value   返回的值
* Return        ：无
**********************************************************/
void gpsCallback(const geometry_msgs::PointStamped::ConstPtr &value){
    GPSvalues[0] = value->point.x;
    GPSvalues[1] = value->point.z;
    // 记录一次机器人初始点位置，所以这边解释了为什么要设置长度为4的GPSvalues数组变量
    if (gps_flag){
        GPSvalues[2] = value->point.x;
        GPSvalues[3] = value->point.z;
        gps_flag=0;
    }
    broadcastTransform();  
}

/*******************************************************
* Function name ：inertial_unitCallback
* Description   ：IMU数据回调函数
* Parameter     ：
        @value   返回的值
* Return        ：无
**********************************************************/
void inertial_unitCallback(const sensor_msgs::Imu::ConstPtr &values){
    Inertialvalues[0] = values->orientation.x;
    Inertialvalues[1] = values->orientation.y;
    Inertialvalues[2] = values->orientation.z;
    Inertialvalues[3] = values->orientation.w;
    broadcastTransform();
}

/*******************************************************
* Function name ：velCallback
* Description   ：接收机器人的角速度和线速度值，由velocity_keyboard_v2发布
* Parameter     ：
        @value   返回的值
* Return        ：无
**********************************************************/
void velCallback(const nav_msgs::Odometry::ConstPtr &value){
    liner_speed = value->twist.twist.linear.x;
    angular_speed = value->twist.twist.angular.z;
    send_odom_data();
}

int main(int argc, char **argv) {
    setlocale(LC_ALL, "zh_CN.utf8"); // 用于显示中文字符
    std::string controllerName;
    // 在ROS网络中创建一个名为robot_init的节点
    ros::init(argc, argv, "robot_init", ros::init_options::AnonymousName);
    n = new ros::NodeHandle;
    // 截取退出信号
    signal(SIGINT, quit);

    // 订阅webots中所有可用的model_name
    ros::Subscriber nameSub = n->subscribe("model_name", 100, controllerNameCallback);
    w.Init(n, nameSub, controllerCount, controllerList);

    // 使能lidar
    if(w.EnableService(n, "Sick_LMS_291")) return 1;

    // 订阅gps服务
    ros::Subscriber gps_sub;
    if(!w.EnableService(n, "gps")){
        gps_sub = n->subscribe(std::string(ROBOT_NAME)+std::string("gps/values"), 1, gpsCallback);
        ROS_INFO("Topic for gps initialized.");
        while (gps_sub.getNumPublishers() == 0) {}
        ROS_INFO("Topic for gps connected.");
    }else return 1;
    
    // 订阅inertial_unit服务
    ros::Subscriber inertial_unit_sub;
    if(!w.EnableService(n, "inertial_unit")){
        inertial_unit_sub = n->subscribe(std::string(ROBOT_NAME)+std::string("inertial_unit/quaternion"), 1, inertial_unitCallback);
        ROS_INFO("Topic for inertial_unit initialized.");
        while (inertial_unit_sub.getNumPublishers() == 0) {}
        ROS_INFO("Topic for inertial_unit connected.");
    }else return 1;

    ros::Subscriber sub_speed;
    sub_speed = n->subscribe("/vel", 1, velCallback);
    odompub = n->advertise<nav_msgs::Odometry>("robot/odom",10);

    // main loop
    while (ros::ok()) {
        if (w.ChecktimeStep())break;
        ros::spinOnce();
    }
    
    w.Quit(n); 
    return 0;
}

