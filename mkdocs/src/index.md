# Overview

![](overview/views.png)

This is the documentation for building and using a retractable lever.
This project was developed in the [Karpova Lab](https://www.janelia.org/lab/karpova-lab) at HHMI's Janelia Research Campus for use in rodent behavioral experiments.

## Features

- Extends and retracts depending on input signal
- Outputs signal when lever is pressed or released
- [pyControl](https://pycontrol.readthedocs.io/en/latest/user-guide/hardware/#behaviour-ports) compatible
- Durable - faceplate and lever are made of aluminum
- Fast - 180ms to extend or retract
- Open - all files are available on [GitHub](https://github.com/Karpova-Lab/nosepoke)  and can be modified to meet custom needs

## Diagrams

### Exploded views

![](overview/exploded.png)
<figcaption>(Left) The servo and lever mount interface using a pin and slot mechanism. (Right) The lever rotates about two spring plungers.</figcaption>

### Carriage movement
![](overview/movement.png)
<figcaption>The rotation of the servo arm is translated into linear movement of the carriage along a guide rail</figcaption>

### Lever function
![](overview/actuation.png)
