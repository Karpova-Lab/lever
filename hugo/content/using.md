# Using

## pyControl

This lever works with the [pyControl](https://pycontrol.readthedocs.io/en/latest/) behavior framework. 
Specifically, this means that the RJ45 [pinout](https://pycontrol.readthedocs.io/en/latest/user-guide/hardware/#behaviour-ports) is compatible with pyControl. 
Using an ethernet cable, you can connect the lever to an  [original breakout board](https://open-ephys.org/pycontrol/pycontrol)  or a [D-series breakout board](https://karpova-lab.github.io/pyControl-D-Series-Breakout/index.html).
The latest sofware release can be downloaded [here](https://github.com/pyControl/code/releases). 
Additional pyControl harware can be purchased from the [Open Ephys Store](https://open-ephys.org/pycontrol).



## Example task
Instuctions for using the pyControl GUI to upload and run a task can be found [here](https://pycontrol.readthedocs.io/en/latest/user-guide/graphical-user-interface/)

Below is an example task you can run to test the lever. 
This task assumes there is a lever connected to port 1 of your breakout board and the ``hardware_definition.py`` file (included with the the software download) has been uploaded to your pyBoard. 
Once the task is running, the lever will extend, then after 5 presses, it will retract, then after 3 seconds it will extend.


``` python

```

For more information on writing your own tasks, refer to the documentation [here](https://pycontrol.readthedocs.io/en/latest/user-guide/programming-tasks/).

{{< previous link="building" text="Building" >}}
