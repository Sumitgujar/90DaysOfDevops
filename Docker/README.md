
# **Docker Commands Cheat Sheet**

##  **Basic Commands**

- Check Docker version
```sh
docker --version
```
- Pull an image from Docker Hub
```sh
docker pull <image_name>
```
- List downloaded images
```sh
docker images
```

##  **Container Management**
- Run a container
```sh
docker run -d --name <container_name> <image_name>
```
- List running containers
```sh
docker ps
```
- List all containers (including stopped ones)
```sh
docker ps -a
```
- Stop a running container
```sh
docker stop <container_id or container_name>
```
- Restart a container
```sh
docker restart <container_id or container_name>
```
- Remove a container
```sh
docker rm <container_id or container_name>
```

## **Image Management**
- Build an image from a Dockerfile
```sh
docker build -t <image_name> .
```
- Remove an image
```sh
docker rmi <image_id>
```

## **Volume & Network**
- List volumes
```sh
docker volume ls
```
- List networks
```sh
docker network ls
```

## **Logs & Shell Access**
- View logs of a container
```sh
docker logs <container_id or container_name>
```
- Access a running container's shell
```sh
docker exec -it <container_id or container_name> sh
```

## **Cleanup**
- Remove all stopped containers
```sh
docker container prune
```
- Remove all unused images
```sh
docker image prune
```
- Remove all unused volumes
```sh
docker volume prune
