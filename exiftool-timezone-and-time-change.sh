#!/bin/bash

# For all JPG files in the current folder set the timezone to GMT -5 and shift all EXIF dates 7 hours backwards.
exiftool "-Timezone=-5:0" "-AllDates-=7" *.JPG && exiftool "-DateTimeOriginal>FileModifyDate" *.JPG
