# Beegoの練習

## まえがき

http://d.hatena.ne.jp/yuheiomori0718/20140102/1388664225#c

コチラを参考にした

## 準備

```zsh
mkdir ~/gopath
```

```zsh:~/.zshrc
#bee
export GOPATH=~/gopath
export PATH=$PATH:$GOPATH/bin/bee
```

権限

```zsh
sudo chmod 775 /usr/local/go/bin
```

## beegoインストール

```zsh
go get github.com/astaxie/beego
go get github.com/beego/bee
```

## MySQLでの操作

 #ユーザbeegoとパスワードbeegoを設定

```sql
GRANT ALL PRIVILEGES ON *.* TO beego@'localhost' IDENTIFIED BY 'beego' WITH GRANT OPTION;
SELECT host,user FROM mysql.user;
```

# beeappのデータベースを生成

```sql
CREATE DATABASE beeapp;
SHOW DATABASES;
```
# 起動

```zsh
bee run
```

アクセス

http://localhost:8080/
