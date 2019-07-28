## Issue : Cant enable and disable touchpad, cuz OS don't recognize touchpad driver.

## Roadmap: 

- Try to find my touchpad software/driver.
    - run 'lspci' not return about my touchpad.
    - install synaptics and try other driver solutions.
    - run 'dmesg' not return about my touchpad.
    - install and run 'xinput' realize that this return a virtual core pointer named as "AUI1667:00 044E:121E Mouse" with a id=11.
    - concluded my solution, i will create a bash script to toggle touchpad and set a keybinding on the FN+F6 key that is actually the 'broken' toggle touchpad key.
    - to create a key binding i used 'xbindkeys' from AUR  (https://www.archlinux.org/packages/community/x86_64/xbindkeys/)
    - to get the symbolic element to the key i used 'xmodmap'that returns: 
        xmodmap:  up to 4 keys per modifier, (keycodes in parentheses):
        shift       Shift_L (0x32),  Shift_R (0x3e)
        lock        Caps_Lock (0x42)
        control     Control_L (0x25),  Control_R (0x69)
        mod1        Alt_L (0x40),  Meta_L (0xcd)
        mod2        Num_Lock (0x4d)
        mod3        Scroll_Lock (0x4e)
        mod4        Super_L (0x85),  Super_R (0x86),  Super_L (0xce),  Hyper_L (0xcf)
        mod5        ISO_Level3_Shift (0x5c),  Mode_switch (0xcb)
    - create a .xbindkeysrc file and run 'xbindkeys'
    