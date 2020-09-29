
for i in "aspnet-mvc-sample-app" "golang-sample-app" "ruby-sample-app" "spring-music";
do
   base64 /dev/urandom | head -c 26214400 > $i/data.file
   (time ./$i/push.sh sample_$i) &> ${i}_push.log
done 
