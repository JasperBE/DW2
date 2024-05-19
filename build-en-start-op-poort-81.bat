docker build -t dw2ubuntu .
docker run -dt -p 81:80 --name dw2ubuntu  dw2ubuntu