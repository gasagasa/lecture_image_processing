課題１０ レポート
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

今回は輪郭抽出のアルゴリズムを試す．プレウィット法，ソベル法，キャニー法をそれぞれ順番に試していく．

プレウィット法

<pre><code>
IMG = edge(ORG,'prewitt');
</code></pre>

![プレウィット法](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai10_1.png?raw=true)
図3 輪郭抽出(プレウィット法)

ソベル法

<pre><code>
IMG = edge(ORG,'sobel');
</code></pre>

![ソベル法](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai10_2.png?raw=true)
図4 輪郭抽出(ソベル法)

キャニー法

<pre><code>
IMG = edge(ORG,'canny');
</code></pre>

![キャニー法](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai10_3.png?raw=true)
図5 輪郭抽出(キャニー法)

図3から5を見ると，プレウィット法とソベル法の間に違いはあまり見られないが，キャニー法は前者二つと比べて多くの線が描かれている．しかしこれは精度の高さを表すものではない．キャニー法はありもしない線を抽出してしまっている．しかしプレウィット法やソベル法では抽出できなかった輪郭を抽出することにも成功しているので，一長一短だろう．
