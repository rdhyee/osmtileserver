set -e
docker build -t rdhyee/osmtileserver .
docker run -it rdhyee/osmtileserver /bin/bash
