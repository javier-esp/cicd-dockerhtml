## con este repositorio puedes subir tus imagenes de docker a un servidor en la nube
### debes agregar las variables secrets de tu repositorio
agrega secrets en tu repositorio de github
- TOKEN_DOCKER_HUB
- SERVER_HOST
- SERVER_USER
- SERVER_PASSWORD
- PORT ...(puerto de tu servidor, 22 deberia de ser)

## repositorio en docker hub
debes crear un repositorio en docker hub para tu imagen llamada:
```minginx```

## cambiar nombre de usuario de docker hub
en el archivo .github/workflows/push.yml debes cambiar elsoloeres por tu nombre de usuario de docker hub
elsoloeres => tu_nombre_usuario_dh

## crear un archivo en tu servidor
En tu servidor tener un archivo docker-compose.yml en esta ruta /root/github-docker

/root/github-docker/docker-compose.yml
```
services:
  nginxpaginaweb:
    ports:
      - "8081:80"
    image: elsoloeres/minginx:latest
```
