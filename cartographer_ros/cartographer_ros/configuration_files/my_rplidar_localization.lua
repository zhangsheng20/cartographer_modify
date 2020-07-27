-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.




include "my_rplidar.lua"

TRAJECTORY_BUILDER.pure_localization = true
POSE_GRAPH.optimize_every_n_nodes = 1
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight=20
POSE_GRAPH.constraint_builder.sampling_ratio=3e-1

TRAJECTORY_BUILDER_2D.motion_filter.max_time_seconds=5
TRAJECTORY_BUILDER_2D.motion_filter.max_distance_meters=0.2
TRAJECTORY_BUILDER_2D.motion_filter.max_angle_radians = math.rad(0.5)

return options
