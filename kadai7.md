課題７ レポート
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

![グレースケール](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai7_0.png?raw=true)
図2 グレースケール画像

　図2のヒストグラムを表示すると，図3のようになる．

<pre><code>
imhist(ORG); % 濃度ヒストグラムを生成，表示
</code></pre>

![拡大前ヒストグラム](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai7_1.png?raw=true)
図3 ダイナミックレンジ拡大前ヒストグラム

　そしてダイナミックレンジを拡大するのだが，その前に画像を読み込んだORG行列の中身を全てdouble型にしておく．もしこの作業をしなかった場合，計算に不具合が生じた結果ORGはユニークな値を0と255しか持たない二値画像になってしまうからである．ダイナミックレンジを拡大した画像を図4に示す．

<pre><code>
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn) * 255;
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
</code></pre>

![拡大後画像](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai7_2.png?raw=true)
図4 ダイナミックレンジ拡大後画像

　この画像を見ても残念ながら違いは上手に観測できなかった．他の数種類の画像でも試したが，どれもダイナミックレンジは十分に取られていたためか，肉眼ではわからなかった．  
　図4をヒストグラムで見ると，図5のようになる．

<pre><code>
ORG = uint8(ORG); % この行について考察せよ
imhist(ORG); % 濃度ヒストグラムを生成，表示
</code></pre>

![拡大後ヒストグラム](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai7_3.png?raw=true)
図5 ダイナミックレンジ拡大後ヒストグラム

　なぜわざわざヒストグラムを表示する前にuint8(ORG)として8ビット符号なし整数への変換を行ったかと言うと，この行を取ってヒストグラムを表示した図6を見るとわかりやすい．

![間違ったヒストグラム](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai7_4.png?raw=true)
図6 間違ったヒストグラム

　この図を見ればわかる通り，0.0と1.0の部分に突出した線が引かれており，他の部分には何も描かれていない．このように，8ビット符号なし整数の配列が入力されないと，imhistは誤った結果を出してしまうためだと考えられる．
