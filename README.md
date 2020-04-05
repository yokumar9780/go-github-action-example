# Docker usage

## buid

docker build --build-arg http_proxy=http://httppxgot.srv.volvo.com:8080 --build-arg https_proxy=http://httppxgot.srv.volvo.com:8080 --build-arg no_proxy=".volvo.com,.volvo.net,vgthosting.net,localhost,127.0.0.1" -t go-github-action-example .

## run

docker run -d -p 1718:1718 --name go-github-action-example go-github-action-example

## access

docker exec -it go-github-action-example bash
