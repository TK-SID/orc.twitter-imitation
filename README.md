# 構成
## WEBサーバー
* host:192.168.43.51
### 入れるもの
- ruby
- passenger
- gem
  - bundler
  -

## DBサーバー
* host:192.168.43.52
 - mysql

## 構築手順
* vagrant入れる
* virtualbox入れる
* クローン
* `git clone https://github.com/TK-SID/orch.twitter-imitation.git`
* ansibleを入れて、`ansible-galaxy`コマンドを使える状態にしておく
* roleをインストール
* `ansible-galaxy install -p provision/roles/galaxy/ -r
* /etc/hostsを編集
`sudo echo "192.168.43.51 twitter-imitation" >> /etc/hosts`
  provision/requirements`
    * この1手がめんどいがために`up.sh`とか作りたい
* vagrant 起動
* `vagrant up`
* vagrantにsshログイン
+ `vagrant ssh web`
