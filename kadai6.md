課題６ レポート
==

標準画像「game_keitai_broken_kids」を原画像とする．この画像は縦800画素，横732画素による正方形のディジタルカラー画像である．

<pre><code>
ORG=imread('image/game_keitai_broken_kids.png'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
</code></pre>

まず一行目で原画像を読み込み，二行目で画像をグレースケール化し，三行目でグレースケール化された原画像を表示している．原画像を図1，グレースケール化された原画像を図2に示す．

![原画像](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/org_img.png?raw=true)
図1 原画像

![グレースケール](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai3_1.png?raw=true)
図2 グレースケール画像

図2を白と黒に二値化する．輝度が128よりも大きい部分を白，小さい部分を黒としたものを図3に示す．

<pre><code>
IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示
</code></pre>

![二値化](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai6_1.png?raw=true)
図3 二値化画像

もうひとつ，ディザ法というものを用いて二値化してみる．ディザ法とは，輝度が0と255色のみを用いて中間色を表現しようというものである．白い部分は点の密度を薄くし，黒い部分は点の密度を濃くすることで，濃淡を表現している．

![ディザ法](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai6_2.png?raw=true)
図4 ディザ法画像
