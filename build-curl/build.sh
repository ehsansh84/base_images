docker rmi mback  || true
#docker build -t mback -f DockerfileMongo .
docker build -t mback -f DockerfileGCC .
docker stop mback || true
docker rm mback || true
img_id=$(docker create mback)
docker cp $img_id:/root/curl/bin/curl .
