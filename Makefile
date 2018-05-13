

create:

	docker run --privileged --name terraria-server -h terraria-server -itd -v /sys/fs/cgroup:/sys/fs/cgroup:ro --tmpfs /run --tmpfs /tmp -v /data:/var/terraria-worlds -p 7777:7777 terraria-server
start:
	docker start terraria-server
stop:
	docker stop terraria-server
remove:
	docker rm -f terraria-server
