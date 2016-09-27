課題４ レポート
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

図2の画素の濃度ヒストグラムを図3に示す．

<pre><code>
imhist(ORG); % ヒストグラムの表示
</code></pre>

![濃度ヒストグラム](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai4_1.png?raw=true)
図3 濃度ヒストグラム

このヒストグラムは，横軸が輝度のレベル，縦軸がそのレベルの画素がどれくらいあるかを表している．参考のため，2階調の画像を用いて試してみる．図4は2階調画像，図5がその濃度ヒストグラムを示している．

![2階調](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai2_2.png?raw=true)
図4 2階調画像

![濃度ヒストグラム](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai4_2.png?raw=true)
図5 濃度ヒストグラム

このように，やや見えにくいが，端と端にしかレベルが存在しない，すなわち輝度値が2つしかないことがわかる．
