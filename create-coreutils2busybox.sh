#!/bin/bash

for l in $(busybox --list | sed ':a;N;$!ba;s/\n/ /g'); do
	if [ ! -e "$pkgdir/usr/bin/"$l ]; then
		ln -s "/usr/bin/busybox" "$pkgdir/usr/bin/"$l
	fi
done
