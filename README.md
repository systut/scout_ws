# Scout Workspace
Scout Robot ROS2

## Set up enviroment
### Config xhost
This method exposes PC to external source. Therefore, it is needed to find an alternative. (This command is needed to run every time restarting PC so that the project can access the monitor)

```bash
# This command have to be run when the pc restarts
xhost +
```

### Install docker
```bash
cd ./src/scout_dockerfiles
chmod +x install_docker.sh && install_docker.sh
```
### Acquire xauthority
```bash
cd ./src/scout_dockerfiles
chmod +x ./install/xauth.sh && ./install/xauth.sh
```
## Run docker container

Startup docker container in detached mode

```bash
cd ./src/scout_dockerfiles
docker compose up -d
```

On one terminal

```bash
docker compose exec -it scout bash
#inside container run
source install/setup.bash
ros2 launch scout_bringup scout_bringup.launch.py
```

To stop containers, run:
```
docker compose down
```