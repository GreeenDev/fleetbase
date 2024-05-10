docker build --platform=linux/amd64 -f console/Dockerfile -t console_fleetbase .
docker tag console_fleetbase:latest rg.fr-par.scw.cloud/funcscwmodernwmsc0jozcqg/console_fleetbase:latest
docker push rg.fr-par.scw.cloud/funcscwmodernwmsc0jozcqg/console_fleetbase:latest


docker build --platform=linux/amd64 -f docker/Dockerfile --build-arg="ENVIRONMENT=production" --target events-dev  -t queue_fleetbase .
docker tag queue_fleetbase:latest rg.fr-par.scw.cloud/funcscwmodernwmsc0jozcqg/queue_fleetbase:latest
docker push rg.fr-par.scw.cloud/funcscwmodernwmsc0jozcqg/queue_fleetbase:latest

docker build --platform=linux/amd64 -f docker/Dockerfile --build-arg="ENVIRONMENT=production" --target  app-dev  -t app_fleetbase .
docker tag app_fleetbase:latest rg.fr-par.scw.cloud/funcscwmodernwmsc0jozcqg/app_fleetbase:latest
docker push rg.fr-par.scw.cloud/funcscwmodernwmsc0jozcqg/app_fleetbase:latest