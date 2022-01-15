#!/usr/bin/env perl
use strict;
use warnings;

#入力した数値が80以上なら'pass',それ以下なら'fail'を出力します
#入力できる数値は1～100とします。
#1～100以外の数値が入力されたら、エラー文を出力します。

#文字コードを設定(文字化け防止)
use utf8;

my $enc_os = 'cp932';#Windowsの場合
#my $enc_os = 'UTF-8';#Linuxの場合
binmode STDIN, ":encoding($enc_os)";
binmode STDOUT, ":encoding($enc_os)";
binmode STDERR, ":encoding($enc_os)";

#入力された値を代入
print('得点を入力してください(1～100)：');
my $score = <STDIN>;

#入力された数値が正常な値か判定する
#数値の変数で未入力の場合は 0 となる
if($score == 0 || $score > 100){
  print('1～100の数値を入力してください');
}else{
  #入力された数値を出力
  print('得点：' , $score);
  
  #得点を判定
  if($score >= 80){
    print('pass');
  }else{
    print('fail');
  }
}

exit 0;