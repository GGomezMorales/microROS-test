FROM ros:humble

SHELL ["/bin/bash", "-c"]

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

RUN mkdir microros_ws

RUN cd microros_ws && \
    git clone -b $ROS_DISTRO https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup && \
    apt-get update && rosdep update && rosdep install --from-paths src --ignore-src -y && \
    apt-get install python3-pip -y

RUN source /opt/ros/humble/setup.bash && \
    cd /microros_ws && \
    colcon build && \
    source install/local_setup.bash && \
    ros2 run micro_ros_setup create_firmware_ws.sh host && \
    ros2 run micro_ros_setup build_firmware.sh && \
    source install/local_setup.bash && \
    ros2 run micro_ros_setup create_agent_ws.sh && \
    source install/local_setup.bash && \
    ros2 run micro_ros_setup build_agent.sh && \
    source install/local_setup.bash

COPY ./setup /
RUN chmod +x /setup

COPY ./running /
RUN chmod +x /running
