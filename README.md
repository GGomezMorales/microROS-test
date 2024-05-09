# microROS on ESP32 (Wemos D1 R32) using Arduino IDE

This repository contains a Docker image pre-configured with all the necessary software to run the microROS agent on ESP32 and Arduino devices. The Docker image simplifies the pre-compilation of the application, allowing focus on code development and deployment on the device.

## Requirements

- ESP32
- Operating System: Ubuntu (Linux)
- Docker installed on your system

## [Setup Arduino IDE](https://www.hackster.io/514301/micro-ros-on-esp32-using-arduino-ide-1360ca#toc-setup-arduino-ide-2)

## Installation

1. **Clone the Repository**: First, clone the repository where the Docker image is hosted.

   ```bash
   git clone https://github.com/GGomezMorales/microROS_ESP32.git
   cd microROS_ESP32
   ```
2. Build and Run the Docker Image:

   ```bash
   ./scripts/build
   ./scripts/run
   ```

## Testing

To verify that the application is running correctly, you can check its status using another terminal. Follow these steps:

1. **Access to container**: Open a new terminal session and run the following command to access to container terminal.

   ```bash
   ./scripts/bash
   ```
2. **Execute Verification Script**: Once inside the container, execute the verification script to ensure the application is functioning as expected:

   ```bash
   ./echo
   ```

```bash
    ---
    data: 8
    ---
    data: 9
    ---
    data: 10
```

This documentation and application are based on [here](https://www.hackster.io/514301/micro-ros-on-esp32-using-arduino-ide-1360ca) 
