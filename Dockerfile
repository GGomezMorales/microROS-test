FROM ros:humble

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

RUN mkdir microros_ws

RUN cd microros_ws && \
    git clone -b $ROS_DISTRO https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup && \
    apt-get update && rosdep update && rosdep install --from-paths src --ignore-src -y && \
    apt-get install python3-pip -y

COPY ./setup /
RUN chmod +x /setup

COPY ./running /
RUN chmod +x /running
