#!/bin/bash
 
if [ $# -eq 1 ]
then
    	    OUT=/tmp/$1-$(date +%d%b).iso
            echo  "La iso sera generada en : " $OUT
genisoimage -J -R -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table -o $OUT .
else
    	echo "error: Uso $0 <nombre de la iso,sin formato .iso> "
fi

