1. docker build -t rhel7_systemd:ver1 .

2. docker container run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup rhel7_systemd:ver1

3. docker exec container_name systemctl status

4. docker exec -it container_name  /bin/bash

