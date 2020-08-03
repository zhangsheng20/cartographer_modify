
how to run in sim:
  frames are defined in my_backpack_2d_sim.urdf ，name of lidar's frame
  defaults to "laser0_frame"

  para of cartographer defined in  my_rplidar_sim.lua 
  if provide imu ,TRAJECTORY_BUILDER_2D.use_imu_data = true
  tracking_frame should be lidar's frame which defaults to "laser0_frame"
  
  in launch file my_rplidar_sim.launch
    toptic name of 2d lidar's info should be "scan",or use remap
    toptic name of imu data should be "imu",or use remap




compile cartographer:
  catkin_make_isolated --install --use-ninja
  catkin_make -DCATKIN_WHITELIST_PACKAGES="rplidar_src"


run rplidar_ros:
  source ~/rplidar_ws/devel/setup.bash
  roslaunch rplidar_ros rplidar_a3.launch


run cartographer:
  source ~/cartographer_ws/install_isolated/setup.bash
  2d: roslaunch cartographer_ros my_rslidar.launch
  3d: roslaunch cartographer_ros my_rplidar.launch

run pure_localization :
  roslaunch cartographer_ros my_rplidar_localization.launch  load_state_filename:=${HOME}/.ros/test001.pbstream

run in simulator of yzchen:
  roslaunch cartographer_ros my_rplidar_sim.launch 


run  pure_localization in simulator of yzchen:
  roslaunch cartographer_ros my_rplidar_localization_sim.launch  load_state_filename:=${HOME}/.ros/test001.pbstream


run with a bag:
  2d :roslaunch cartographer_ros my_demo_rplidar.launch bag_filename:=${HOME}/Desktop/2020-07-27-20-25-08.bag

  2d: roslaunch cartographer_ros my_demo_rplidar.launch bag_filename:=${HOME}/Desktop/2020-07-28-20-10-15.bag

  3d: roslaunch cartographer_ros my_demo_rslidar.launch bag_filename:=${HOME}/Desktop/2020-07-29-17-01-24.2.bag


run in a google's bag:
  roslaunch cartographer_ros demo_backpack_2d.launch bag_filename:=${HOME}/Downloads/cartographer_paper_deutsches_museum.bag


run pure_localization with bag:
  roslaunch cartographer_ros my_demo_rplidar_localization.launch  load_state_filename:=${HOME}/.ros/test001.pbstream bag_filename:=${HOME}/Desktop/2020-07-27-20-25-08.bag

  roslaunch cartographer_ros my_demo_rplidar_localization.launch  load_state_filename:=${HOME}/.ros/test001.pbstream bag_filename:=${HOME}/Desktop/2020-07-28-20-10-15.bag  topic_name:=/scan



