---
next_txt: Building
next_link: building
---

# Overview

<p>
    <a href="https://a360.co/2xeP6Bi">
        <img src="render.png" style="width:70%;margin:auto;display:block;">
        </img>
    </a>
</p>

{{< caption text="Click to view CAD model" >}}


This is the documentation for building and using a retractable lever.
This project was developed in the [Karpova Lab](https://www.janelia.org/lab/karpova-lab) at HHMI's Janelia Research Campus for use in rodent behavioral experiments.

## Features

- Extends and retracts depending on input signal
- Outputs signal when lever is pressed or released
- [pyControl](https://pycontrol.readthedocs.io/en/latest/user-guide/hardware/#behaviour-ports) compatible
- Durable - faceplate and lever are made of aluminum
- Fast - 180ms to extend or retract
- Open - all files are available on [GitHub](https://github.com/Karpova-Lab/nosepoke)  and can be modified to meet custom needs


![](exploded.png)
{{< caption text="The servo and lever mount interface using a pin and slot mechanism. The lever rotates about two spring plungers." >}}
![](movement.png)
{{< caption text="Servo arm rotation is translated into linear movement of a carriage along a guide rail" >}}


<!-- {{< columns >}}
<br>
{{< caption text="The lever begins retracted" >}}
<br>
{{< caption text="As the stage extends, the limit switch arm rolls along the lever surface." >}}
<br>
{{< caption text="Pressing the lever front lifts the back and actuates the limit switch." >}}
<--->
![](actuation.png)
{{< /columns >}} -->

{{< columns >}}
<div style="height:100%;display:flex;justify-content:center;flex-direction:column;">
    {{< caption text="The lever begins retracted" >}}
    <br>
    {{< caption text="As the stage extends, the limit switch arm rolls along the lever surface." >}}
    <br>
    {{< caption text="Pressing the lever front lifts the back and actuates the limit switch." >}}
</div>
<--->
![](actuation.png)

{{< /columns >}}


