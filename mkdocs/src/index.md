# Overview

![](overview/views.png)

This is the documentation for building and using a retractable lever.

This project was developed by Andy Lustig in the [Karpova Lab](https://www.janelia.org/lab/karpova-lab) at HHMI's Janelia Research Campus.

## Features

- Receives an input signal to either extend or retract the lever
- Produces an output signal corresponding to the status of the lever (pressed or not pressed)
- [pyControl](https://pycontrol.readthedocs.io/en/latest/user-guide/hardware/#behaviour-ports) compatible
- Fast - 180ms to extend or retract
- Durable - faceplate and lever are made of aluminum and can hold up to abuse from rodent claws and teeth
- Open source - all files are available on [GitHub](https://github.com/Karpova-Lab/nosepoke) and can be modified to meet custom needs

## Diagrams

### Exploded views

![](overview/exploded.png)
<figcaption>(Left) The servo and lever mount interface using a pin and slot mechanism. (Right) The lever rotates about two spring plungers.</figcaption>

### Carriage movement
![](overview/movement.png)
<figcaption>The rotation of the servo arm is translated into linear movement of the carriage along a guide rail</figcaption>

### Lever function
![](overview/actuation.png)
