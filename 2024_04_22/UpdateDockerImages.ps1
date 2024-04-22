#Phase 1
#Fetch latest (or specified) versions of images in "docker-compose.yaml"
Write-Output "Updating images defined in docker-compose.yaml file..."
docker-compose pull

#Phase 2
#Quickstart the new containers while removing the old ones at the same time. Detached mode is used.
Write-Output "Restarting and upgrading containers..."
docker-compose up -d --remove-orphans

#Phase 3
#Delete old images after a confirmation prompt (just in case!)
Write-Output "Cleaning up unused images...
docker image prune