# Physio T
''' Created at MakeUofT 2020 - 1st Place Overall '''

## Inspiration
Physiotherapy is expensive for what it provides you with, A therapist stepping you through simple exercises and giving feedback and evaluation? WE CAN TOTALLY AUTOMATE THAT! We are undergoing the 4th industrial revolution and technology exists to help people in need of medical aid despite not having the time and money to see a real therapist every week.

## What it does
IMU and muscle sensors strapped onto the arm accurately track the state of the patient's arm as they are performing simple arm exercises for recovery. A 3d interactive GUI is set up to direct patients to move their arm from one location to another by performing localization using IMU data. A classifier is run on this variable-length data stream to determine the status of the patient and how well the patient is recovering. This whole process can be initialized with the touch of a button on your very own mobile application.

## How WE built it
On the embedded system side of things, we used a single raspberry pi for all the sensor processing. The Pi is in charge of interfacing with the IMU while another Arduino interfaces with the other IMU and a muscle sensor. The Arduino then relays this info over a bridged connection to a central processing device where it displays the 3D interactive GUI and processes the ML data. all the data in the backend is relayed and managed using ROS. This data is then uploaded to firebase where the information is saved on the cloud and can be accessed anytime by a smartphone. The firebase also handles plotting data to give accurate numerical feedback of the many values orientation trajectory, and improvement over time.

## Challenges I ran into
Hooking up 2 IMU to the same rpy is very difficult. We attempted to create a multiplexer system with little luck. To run the second IMU we had to hook it up to the Arduino. Setting up the library was also difficult. Another challenge we ran into was creating training data that was general enough and creating a preprocessing script that was able to overcome the variable size input data issue. The last one was setting up a firebase connection with the app that supported the high data volume that we were able to send over and to create a graphing mechanism that is meaningful.
