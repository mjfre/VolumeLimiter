    
#!/bin/bash  

TRANSGRESSIONS=0

while true
do
if [ $(osascript -e 'output volume of (get volume settings)') -gt 25 ] ; then
osascript -e 'set volume output volume 2'
((TRANSGRESSIONS++))
fi
if [ $TRANSGRESSIONS -ge 3 ]; then
osascript -e 'set volume output volume 0'
echo "locked"
fi
done
