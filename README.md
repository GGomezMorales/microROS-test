# microROS on ESP32 (Wemos D1 R32) using serial

This repository contains a Docker image pre-configured with all the necessary software to build ESP32 firmware and the microROS agent on ESP32 devices. The Docker image simplifies the pre-compilation of the application, allowing focus on code development and deployment on the device.

## Requirements

- ESP32
- Operating System: Ubuntu (Linux)
- Docker installed on your system

## Installation

1. **Clone the Repository**: First, clone the repository where the Docker image is hosted.

   ```bash
   git clone -b firmware-serial-ping_pong https://github.com/GGomezMorales/microROS_ESP32.git
   cd microROS_ESP32

2. Connect esp32 to your computer via USB

3. Build and Run the Docker Image:

   ```bash
   ./scripts/build
   ./scripts/run
   ```

4. Once inside the container, you can use following command to flash the firmware on ESP32:
   ```bash
   ros2 run micro_ros_setup flash_firmware.sh
   ```

5. Run the ROS microagent with the following command:
   ```bash
   cd ..
   ./autostart
   ```

## Testing

To verify that the application is running correctly, you can check its status using another terminal. Follow these steps:

1. **Access to container**: Open a new terminal session and run the following command to access to container terminal.

   ```bash
   ./scripts/bash
   ```
2. **Execute Verification Script**: Once inside the container, execute the verification script to ensure the application is functioning as expected:

   ```bash
   cd ..
   ./echo
   ```

   ```bash
   stamp:
   sec: 1874
   nanosec: 348810000
   frame_id: '657606143_663200998'
   ---
   stamp:
   sec: 1876
   nanosec: 348808000
   frame_id: '68951080_663200998'
   ---
   ```

This documentation and application are based on [here](https://cps.unileoben.ac.at/install-micro-ros-on-esp32/)
