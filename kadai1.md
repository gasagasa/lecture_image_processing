﻿課題１レポート
==

標準画像「game_keitai_broken_kids」を原画像とする．この画像は縦800画素，横732画素による正方形のディジタルカラー画像である．

<pre><code>
ORG=imread('image/game_keitai_broken_kids.png'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
</code></pre>

によって，原画像を読み込み，表示した結果を図１に示す．

![原画像](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/org_img.png?raw=true)
図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

<pre><code>
IMG = imresize(ORG,0.5^1); % 画像の縮小  
IMG2 = imresize(IMG,2^1,'box'); % 画像の拡大
</code></pre>

1/2サンプリングの結果を図２に示す．

![原画像](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai1_1.png?raw=true)
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，原画像を1/4倍に縮小した後，4倍に拡大すればよい．すなわち，

<pre><code>
IMG = imresize(IMG,0.5^2); % 画像の縮小  
IMG2 = imresize(IMG,2^2,'box'); % 画像の拡大
</code></pre>

とする．1/4サンプリングの結果を図３に示す．

![原画像](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai1_2.png?raw=true)
図3 1/4サンプリング

1/8から先のサンプリングも同様に行う．これらをforループで回し，1/32サンプリングまでを行った．図4から図6にその結果を示す．
<pre><code>
for i = 1:5
    IMG = imresize(ORG,0.5^i); % 画像の縮小
    IMG2 = imresize(IMG,2^i,'box'); % 画像の拡大
    imagesc(IMG2); axis image; % 画像の表示
    pause; % 一時停止
end
</code></pre>

![原画像](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai1_3.png?raw=true)
図4 1/8サンプリング

![原画像](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai1_4.png?raw=true)
図5 1/16サンプリング

![原画像](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai1_5.png?raw=true)
図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
