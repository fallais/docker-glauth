# Docker GLAuth

**docker-glauth** provides a Docker container for **GLAuth**.

## Usage

`docker run -d --name glauth -p 389:389 -v /etc/glauth:/data fallais/docker-glauth`

**Note** : The folder that is mapped must contain the `glauth.cfg` file.
