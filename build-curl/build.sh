docker build -t gcc -f DockerfileGCC .
img_id=$(docker create gcc)
docker cp $img_id:/root/curl/bin/curl .
