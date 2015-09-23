#!/bin/bash

bash start.sh
rm build/*.* -f
hadoop com.sun.tools.javac.Main OrphanPages.java -d build
rm OrphanPages.jar
jar -cvf OrphanPages.jar -C build/ ./

hadoop jar OrphanPages.jar OrphanPages /mp2/links /mp2/D-output

