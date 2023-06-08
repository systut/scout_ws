FROM ros:humble

# copy install scripts
COPY ./scout_dockerfiles/install /root/install

# update and install dependencies
RUN chmod +x /root/install/*

RUN /bin/sh -e -c /root/install/i_dep.sh

COPY ./ /root/catkin_ws/src/

# set default bash shell
SHELL ["/bin/bash", "-c"]

# set environment variable for ros
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
RUN echo "source /root/catkin_ws/install/setup.bash" >> /root/.bashrc

# install ros dependencies
WORKDIR /root/catkin_ws 

RUN rosdep update

RUN source /opt/ros/humble/setup.bash && \
    colcon build