# Traffic_Light

# Overview
This project was done in my EECS 270: Intro to Logic Design. In this lab, I have created a traffic light to service the following T intersection:

<img width="340" alt="image" src="https://user-images.githubusercontent.com/95982168/201210313-89cacae4-e318-48e0-8218-1863c61fdd11.png">

The traffic light is optimized to serve as many cars as possible while also balancing service priorities for each lane. This traffic light is sensor based, which means that cars that are stationary at a certain point in time will trigger the sensor. There are four sensors in total; one for each individual flow of traffic.

# Demo

<img width="191" alt="image" src="https://user-images.githubusercontent.com/95982168/201211368-b3c8ffc7-db9a-4b5d-8157-f1f411f230f5.png">

The demonstration for this project was done on a FPGA DE-2 board, where switches would act as sensors, key buttons as a clock, and HEX displays as the traffic light itself. This allows the user to test individual scenarios to test the logic of the traffic light itself.
