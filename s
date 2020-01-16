docker build -t test rhel7init_systemd/

docker container run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup test

docker exec priceless_sanderson systemctl status

docker exec -it priceless_sanderson  /bin/bash

