課題３ レポート
==

標準画像「game_keitai_broken_kids」を原画像とする．この画像は縦800画素，横732画素による正方形のディジタルカラー画像である．

<pre><code>
ORG=imread('game_keitai_broken_kids.png'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
</code></pre>

まず一行目で原画像を読み込み、二行目で画像をグレースケール化し、三行目でグレースケール化された原画像を表示している。原画像を図1、グレースケール化された原画像を図2に示す。

![原画像](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/org_img.png?raw=true)
図1 原画像

![グレースケール](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai3_1.png?raw=true)
図2 グレースケール画像

閾値処理をするためには、輝度値で抽出してしまえば良い。輝度値が64よりも大きいところを抽出した画像を図3に示す。

<pre><code>
IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar; axis image;
</code></pre>

![64よりも大きい](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai3_2.png?raw=true)
図3 輝度値が64よりも大きい

同じようにして、輝度値がそれぞれ96、128、192よりも大きいところを抽出した画像を図4から6に示す。

![96よりも大きい](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai3_3.png?raw=true)
図4 輝度値が96よりも大きい

![128よりも大きい](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai3_4.png?raw=true)
図5 輝度値が128よりも大きい

![192よりも大きい](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai3_5.png?raw=true)
図6 輝度値が192よりも大きい

このように閾値の輝度値を大きくすると、暗い部分が黒く塗り潰される面積が大きくなっていっていることがわかる。
