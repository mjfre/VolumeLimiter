    
#!/bin/bash  

if [ $(osascript -e 'output volume of (get volume settings)') -gt 25 ] ; then
osascript -e 'set volume output volume 2';
fi;
