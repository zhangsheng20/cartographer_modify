
how to run in sim:
  frames are defined in my_backpack_2d_sim.urdf ，name of lidar's frame
  defaults to "laser0_frame"

  para of cartographer defined in  my_rplidar_sim.lua 
  if provide imu ,TRAJECTORY_BUILDER_2D.use_imu_data = true
  
  in launch file my_rplidar_sim.launch
    toptic name of 2d lidar's info should be "scan",or use remap
    toptic name of imu data should be "imu",or use remap

