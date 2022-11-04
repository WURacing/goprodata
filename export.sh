#!/bin/bash

cd gpx2video/build/
echo $(pwd)
for file in ../../videos/*.MP4; do
    echo "Processing $file file..."
    echo "Export to ../../$1$(basename $file .MP4).gpx"
    ./gpx2video -q -m $file -o "../../$1$(basename $file .MP4).gpx" -f 3 extract
done
cd ../../
