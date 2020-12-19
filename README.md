# turtlebot2_Localization
This is the localization of the Turtlebo2 by fusing imu, and odometry data

## turtlebot_gazebo package 

this package is used for its Gazebo launchers and worlds for TurtleBot simulation, see [link](http://wiki.ros.org/turtlebot_gazebo)
The turtlebot2 gazebo package has its rotary encoders and imu data published under these topics:

[!til](https://media.giphy.com/media/Q9rOmYzy2MmDbMu7pF/giphy.gif)

`/mobile_base/sensors/imu_data` as `sensor_msgs/Imu`:  

```
std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
geometry_msgs/Quaternion orientation
  float64 x
  float64 y
  float64 z
  float64 w
float64[9] orientation_covariance
geometry_msgs/Vector3 angular_velocity
  float64 x
  float64 y
  float64 z
float64[9] angular_velocity_covariance
geometry_msgs/Vector3 linear_acceleration
  float64 x
  float64 y
  float64 z
float64[9] linear_acceleration_covariance

```

`/odom` as `nav_msgs/Odometry`:

```
std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
string child_frame_id
geometry_msgs/PoseWithCovariance pose
  geometry_msgs/Pose pose
    geometry_msgs/Point position
      float64 x
      float64 y
      float64 z
    geometry_msgs/Quaternion orientation
      float64 x
      float64 y
      float64 z
      float64 w
  float64[36] covariance
geometry_msgs/TwistWithCovariance twist
  geometry_msgs/Twist twist
    geometry_msgs/Vector3 linear
      float64 x
      float64 y
      float64 z
    geometry_msgs/Vector3 angular
      float64 x
      float64 y
      float64 z
  float64[36] covariance
```

In order to map the topic one can do: `<remap from="foo" to="/mobile_base/sensors/imu_data" />`


## Convert estimated odometry to trajectory

For this purposes, the [link](https://github.com/turtlebot/turtlebot) ROS package is used with the following logic:

![image](https://user-images.githubusercontent.com/17289954/102691785-569cee80-420f-11eb-9d11-f43919fdaf11.png)

# Moving with teleopt package
