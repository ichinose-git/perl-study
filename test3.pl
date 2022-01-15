#!/usr/bin/env perl
use strict;
use warnings;

#午前1時は25時、午前2時は26時と表記される
#そのパターンで、25以降の数値を入力されたとき、その値を1～12に変換する
#入力できる数値は25～36

#文字コードを設定(文字化け防止)
use utf8;

my $enc_os = 'cp932';#Windowsの場合
#my $enc_os = 'UTF-8';#Linuxの場合
binmode STDIN, ":encoding($enc_os)";
binmode STDOUT, ":encoding($enc_os)";
binmode STDERR, ":encoding($enc_os)";

#25以降の値を入力
print('25時～36時の数値を入力してください：');
my $input_time = <STDIN>;

#\nを消す
chomp($input_time);

#基準となる値(入力値との比較用)
my $base_time = 25;

#
#
for(my $i = 1; $i <= 12; $i++){
  if($input_time == $base_time){
    print($input_time,'時 = ',$i,'時');
    exit 0;
  }
  $base_time++;
}

exit 0;
