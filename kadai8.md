課題８ レポート
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
IMG = ORG>128; % 128で二値化
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示
</code></pre>

![二値化](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai6_1.png?raw=true)
図3 二値化画像

更に，この二値化された画像をラベリングする．画像処理におけるラベリングとは，二値化された画像において，同じ色の部分（白か黒）が連続した画素に同じ番号を割り振る処理である．MATLABのbwlabelnコマンドによってラベリングを行うことが可能で，画像以外特に指定をしなければデフォルトでは8近傍を同じラベルと判断する．

<pre><code>
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; axis image;% 画像の表示
</code></pre>

![8近傍](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai8_2.png?raw=true)
図4 8近傍によるラベリング画像

なお，4近傍で処理を行うと図5のようになる．図4ではうっすらと見えていた左側の男の子が，完全に見えなくなってしまっていることがわかる．

![4近傍](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai8_3.png?raw=true)
図5 4近傍によるラベリング画像
