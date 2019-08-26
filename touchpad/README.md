## Issue : Cant enable and disable touchpad, cuz OS don't recognize touchpad driver.

## Roadmap: 

- Try to find my touchpad software/driver.
    - run 'lspci' not return about my touchpad.
    - install synaptics and try other driver solutions.
    - run 'dmesg' not return about my touchpad.
    - install and run 'xinput' realize that this return a virtual core pointer named as "AUI1667:00 044E:121E Mouse" with a id=11.
   
