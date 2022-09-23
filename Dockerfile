FROM ros:rolling-perception

RUN apt-get update && apt-get install -y \
  python3-colcon-common-extensions python3-vcstool \
  git \
  && rm -rf /var/lib/apt/lists/*

# Setup so that shells have correct
RUN touch /root/.bashrc \
 && echo "source /opt/ros/rolling/setup.bash" >> /root/.bashrc \
 && echo "source ~/colcon_ws/devel/setup.bash" >> /root/.bashrc 