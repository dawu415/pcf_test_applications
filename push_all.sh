#!/usr/bin/bash
for i in "aspnet-mvc-sample-app" "golang-sample-app" "ruby-sample-app" "spring-music";
do
   echo "Process $i..."
   echo "    - Creating Random File.."
   base64 /dev/urandom | head -c 26214400 > $i/data.file
   echo "    - Starting CF Push"
   (time ./$i/push.sh sample_${i}_${1}) &> ${i}_push.log
done 
