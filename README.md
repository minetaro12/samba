# samba
samba in docker container

## 使い方
```bash
$ git clone https://github.com/minetaro12/samba

$ cp secrets.env.example secrets.env

$ vim secrets.env
ここでUIDとユーザー名、パスワードを設定する

$ cp config/smb.conf.example config/smb.conf

$ vim config/smb.conf
必要に応じてsambaの設定を変える

$ docker compose up -d
```