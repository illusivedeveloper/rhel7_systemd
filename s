1. docker build -t rhel7_systemd:ver1 .

2. docker container run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup rhel7_systemd:ver1

3. docker exec container_name systemctl status

4. docker exec -it container_name  /bin/bash


Similar thing can bve done with rhel7_init ubi image for non OCI-systemd-hooks. Run image using following command:
	$ docker container run -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup rhel7_init  
The OCI-systemd-hooks require host rhel or centos  and oci installation to enable them as of this writing.
Above command 3,4 can be used get inside container shell.
The attached image has description of other ways.

