# calculator

buid the calcluator docker image and push to the dockerhub using jenkins 
try this  on  jenknis node agent because  the 8080 port is alredy occupied to jenkins master 

# Download the buildx binary

mkdir -p ~/.docker/cli-plugins
curl -SL https://github.com/docker/buildx/releases/download/v0.6.3/buildx-v0.6.3.linux-amd64 -o ~/.docker/cli-plugins/docker-buildx
# Make it executable


chmod a+x ~/.docker/cli-plugins/docker-buildx

docker build -t calculator  . 

 docker  login  -u  anirudhadak2  -p  $MYPASS 
 
 docker tag  calculator  anirudhadak2/new-app:calculator

 docker  push  anirudhadak2/new-app:calculator
 
 docker logout 
 

docker run -p 8090:8080 --name test-calculator -d  anirudhadak2/new-app:calculator

docker ps

