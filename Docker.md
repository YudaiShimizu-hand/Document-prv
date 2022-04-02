# Docker

* 仮想化環境

```使用方法

Docker OSにimageを作る。(docker pull)
->Docker indexから引っ張ってくる。

->containerができる(docker run)
* containerで設定、アプリを作ったり、インストールしたりする。

->新たなimageを作る。(docker commit)

->docker pushを使えば設定したimageがDocker indexに入る。

->同じような流れで行うことで他のOSでも使える。
```

```
$sudo docker pull centos

$sudo docker images
//imageを確認

$sudo docker inspect centos
//imageの詳細

$sudo docker rmi ID名
//imageの削除

$sudo docker run centos echo 'hello world'
//コンテイナー作成

$sudo docker ps
//コンテイナーの確認

$sudo docker ps -a
//停止中のものも確認

$sudo docker rm ID名
//containerの削除

$sudo docker run -d centos free -s 3
//実行

$sudo docker stop(kill) ID名
//止める

$sudo docker run -i -t centos /bin/bash
//containerの中でinstall
//-i インタラクティブ
//-t　ターミナルで起動

$sudo docker commit ID名 username/name
//imageの作成
```

## 自動化する

```
vi dockerfile
```

```vim

FROM centos

MAINTAINER Yudai Shimizu <yud1934ai@gmail.com>

# RUN:buildするときに実行される
RUN echo "now building..."
# CMD:runするときに実行される。
CMD [echo "now runnning..."]

```

