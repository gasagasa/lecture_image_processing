課題２ レポート
==

標準画像「game_keitai_broken_kids」を原画像とする．この画像は縦800画素，横732画素による正方形のディジタルカラー画像である．

<pre><code>
ORG=imread('image/game_keitai_broken_kids.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
</code></pre>

まず一行目で原画像を読み込み，二行目で画像をグレースケール化し，三行目でグレースケール化された原画像を表示している．原画像を図1，グレースケール化された原画像を図2に示す．

![原画像](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/org_img.png?raw=true)
図1 原画像

![グレースケール](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai2_1.png?raw=true)
図2 グレースケール画像

図2の画像を2階調にするためには，比較演算子を用いる．輝度の範囲は0～255であるので，輝度が128よりも大きいところを白，128以下のところを黒として抽出してしまえば良い．

<pre><code>
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
</code></pre>

2階調になった画像を図3に示す．これを見ると，画像が白と黒の二色だけであり，灰色が含まれていないことがわかる．

![2階調](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai2_2.png?raw=true)
図2 2階調画像

これを4階調にするためには，輝度が64，128，192よりも大きいところをそれぞれ白として，そうでないところを黒としてまず抽出する．その後，それぞれの画像を足すことで4階調の画像が完成する．図3に4階調の画像を示す．

<pre><code>
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;
</code></pre>

![4階調](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai2_3.png?raw=true)
図3 4階調画像

同じようにして8階調の画像を作る．結果を図4に示す．

<pre><code>
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;
</code></pre>

![8階調](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai2_4.png?raw=true)
図4 8階調画像

また，階調を変更した際に，疑似輪郭というものが発生することがある．これまでに試した画像は絵であり輪郭がはっきりしているため疑似輪郭が発生しなかった．そのため，実写の画像で試してみる．原画像を図5，グレースケールにした画像を図6，8階調にした画像を図7に示す．

![原画像](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai2_5.jpg?raw=true)
図5 原画像

![グレースケール](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai2_6.jpg?raw=true)
図6 グレースケール画像

![8階調](https://github.com/gasagasa/lecture_image_processing/blob/master/image/kadai2_7.jpg?raw=true)
図7 8階調画像

8階調画像の影の部分に顕著だが，謎の輪郭が生じている．これを擬似輪郭と呼ぶ．
