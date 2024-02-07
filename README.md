# samba
samba in docker container

## 使い方
```bash
$ git clone https://github.com/minetaro12/samba

$ cd samba

$ cp secrets.env.example secrets.env

$ vim secrets.env
ここでUIDとユーザー名、パスワードを設定する

$ cp config/smb.conf.example config/smb.conf

$ vim config/smb.conf
必要に応じてsambaの設定を変える

$ docker compose up -d
もしくは
$ docker run -d \
  -p 445:445 \
  --restart always \
  --env-file ./secrets.env \
  -v ./share:/share \
  -v ./config/smb.conf:/etc/samba/smb.conf:ro \
  ghcr.io/minetaro12/samba:latest
```