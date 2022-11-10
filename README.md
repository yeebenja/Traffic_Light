# Traffic Light

# Overview
This project was done in my EECS 270: Intro to Logic Design. In this lab, I have created a traffic light to service the following T intersection:

<img width="340" alt="image" src="https://user-images.githubusercontent.com/95982168/201210313-89cacae4-e318-48e0-8218-1863c61fdd11.png">

The traffic light is optimized to serve as many cars as possible while also balancing service priorities for each lane. This traffic light is sensor based, which means that cars that are stationary at a certain point in time will trigger the sensor. There are four sensors in total; one for each individual flow of traffic.

# Demo

<img width="345" alt="image" src="https://user-images.githubusercontent.com/95982168/201211507-52bc75e7-d79f-4165-95ad-d7a5f287aa1f.png">

The demonstration for this project was done on a FPGA DE-2 board, where switches would act as sensors, key buttons as a clock, and HEX displays as the traffic light itself. This allows the user to test individual scenarios to test the logic of the traffic light itself.

# Configurability
The user will have to implement their own hardware for the sensor, clock, and display, however, the logic design has been completed for your pleasure. Enjoy!
