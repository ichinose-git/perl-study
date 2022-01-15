#!/usr/bin/env perl
use strict;
use warnings;

#元となる文章1と、それを書き写した文章2で差異がないか確認する
#差異がなければ 'YES' を出力、差異がある場合 'NO' を出力する
#文章の長さは1文字以上20文字以下とします
#文章の長さが規定数以上か以下の場合、エラー文を出力します。

#文字コードを設定(文字化け防止)
use utf8;

my $enc_os = 'cp932';#Windowsの場合
#my $enc_os = 'UTF-8';#Linuxの場合
binmode STDIN, ":encoding($enc_os)";
binmode STDOUT, ":encoding($enc_os)";
binmode STDERR, ":encoding($enc_os)";

#入力された文章を代入
#STDINは、改行コード\nも含めて取得する
my $s_1 = <STDIN>;#元の文章
my $s_2 = <STDIN>;#書き写した文章

#\nを消す
chomp($s_1);
chomp($s_2);

#入力された文章の長さが正常か判定する(length関数を使用して文字数を取得)
#未入力の場合は、文字列は '' となるので、length使っての値は 0 になります
if(length($s_1) == 0 || length($s_1) > 20 || length($s_2) == 0 || length($s_2) > 20){
  print('1文字以上20文字以下で文章をご入力ください');
}else{
  print('入力文字列1：',$s_1,"\n");
  print('入力文字列2：',$s_2,"\n");
  #入力された文字列を比較
  if($s_1 eq $s_2){
    print('YES');
  }else{
    print('NO');
  }
}

exit 0;






