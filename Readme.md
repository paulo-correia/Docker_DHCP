# DHCP Server on Docker (Alpine Linux Image)

## Save Dockerfile on a folder Ex: DHCP
**Caution: Only one dockerfile per folder**

### Generate image

docker build -t `<name>` .

`<name>` = Ex: apache or your_docker_hub_name/dhcp:1.0

### Running Container

docker run -d -p `<local port>`:67 `<name>`

`<local port>` = Ex 6767

### If don't generate image, get from docker hub

docker run -d -p `<local port>`:67 paulocorreia/alpine_dhcp:1.0

### Testing

docker logs `<container name or id>`

`<container name or id>` you get on docker ps
