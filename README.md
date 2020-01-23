# rhel7_systemd

Working rhel7 with systemd utility.

A complete descriptive of RHEL7 systemd enabled image is given here: [RHEL_Systemd_Docker_Image](https://docs.google.com/document/d/1CSOgxJERJECF4Se7aSMI9w3_ipMvr4jVlCx_Wweoa9g/edit?usp=sharing)

Used rhel7 ubi repos.
Steps:

1. To build the image use:  
> $ docker build -t rhel7_systemd:ver1 .

2. To run the container in privileged mode use:
> $ docker container run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup rhel7_systemd:ver1

3. To get systemctl staus use: 
> $ docker exec container_name systemctl status

4. To get into container shell use:
> $ docker exec -it container_name  /bin/bash


Similar thing can done with '''rhel7_init or ubi-init''' images for non OCI-systemd-hooks. 
Run image using following command:
> $ docker container run -d -P --tmpfs /run --tmpfs /tmp -v /sys/fs/cgroup:/sys/fs/cgroup image_name


The OCI-systemd-hooks require host rhel or centos  and oci installation to enable them as of this writing.
Above command 3,4 can be used get inside container shell.

The attached image has description of other ways.


