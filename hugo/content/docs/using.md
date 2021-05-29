# Using

## pyControl

This lever works with the [pyControl](https://pycontrol.readthedocs.io/en/latest/) behavior framework. 
Specifically, this means that the RJ45 [pinout](https://pycontrol.readthedocs.io/en/latest/user-guide/hardware/#behaviour-ports) is compatible with pyControl. 
Using an ethernet cable, you can connect the lever to an [original breakout board](https://open-ephys.org/pycontrol/pycontrol)  or a [D-series breakout board](https://karpova-lab.github.io/pyControl-D-Series-Breakout/index.html). 

## Example task

{{< hint info >}}
### <i class="fas fa-info-circle"></i> Note
For the example to work,  <a href="_lever.py" download > <i class="fa fa-download"></i>_lever.py </a> must be downloaded and placed in your `devices` folder. 
Then after connecting to you pyboard, use the "config" button to "Load framework".
This will transfer the device files, including _lever.py, from your computer onto the pyboard microcontroller.


{{< /hint >}}


Below is an example task you can run to test the lever. 
The task assumes a lever is connected to **port 1** of your breakout board.

When the task starts, the lever will extend. 
Pressing the extended lever 3 times will cause the lever to retract.
After 1 second, the lever will extend again.
The number of presses required and the duration of the retraction are variables that can be adjusted.

``` python
from pyControl.utility import *
from devices import *
import pyControl.hardware as _h

## uncomment one of the following two lines depending out which breakout board you are using
board = Breakout_1_2()  # original pyboard breakout
# board = Breakout_dseries_1_6()  # d-series pyboard breakout

lever = Lever(board.port_1, lever_event="lever")

states = ["available", "retracted"]
events = ["lever", "extend_again"]

v.press_count___ = 0
v.retract_time_ms = 1000
v.required_presses = 3
initial_state = "available"


def available(event):
    if event == "entry":
        lever.extend()
        v.press_count___ = 0
    elif event == "lever":
        v.press_count___ += 1
        if v.press_count___ == v.required_presses:
            goto_state("retracted")


def retracted(event):
    if event == "entry":
        lever.retract()
        set_timer("extend_again", v.retract_time_ms)
    elif event == "extend_again":
        goto_state("available")

```

For more information on writing your own tasks, refer to the  [pyControl documentation](https://pycontrol.readthedocs.io/en/latest/user-guide/programming-tasks/).

{{< previous link="building" text="Building" >}}
