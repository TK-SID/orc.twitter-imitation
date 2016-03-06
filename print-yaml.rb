#!/usr/bin/ruby

require 'yaml'
require 'pp'

str  = ARGF.read()      # 入力をすべて読み込む
data = YAML.load(str)   # パースする
pp data                 # データを表示する
