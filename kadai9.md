課題９ レポート
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

今回はメディアンフィルタというノイズ除去のアルゴリズムを試す．まずグレースケールの画像にノイズを乗せる．

<pre><code>
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付
</code></pre>

![ノイズ](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai9_1.png?raw=true)
図3 ノイズ画像

さて，メディアンフィルタの効果を体験する前に，まず平滑化フィルタというノイズ除去のアルゴリズムを試してみる．平滑化には移動平均フィルタとガウシアンフィルタの二つがあるが，今回は移動平均フィルタと呼ばれるほうを試す．

<pre><code>
IMG = filter2(fspecial('average',3),ORG);
</code></pre>

![平滑化](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai9_2.png?raw=true)
図4 平滑化フィルタ適用後

このように輝度値0と255のノイズは取ることができたが，代わりに埃のようなノイズが発生し，画質も落ちている．そこでメディアンフィルタを試す．

<pre><code>
IMG = medfilt2(ORG,[3 3]);
</code></pre>

![メディアン](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai9_3.png?raw=true)
図5 メディアンフィルタ適用後

このように，ノイズが綺麗に消え去った上に，ほとんど画質の劣化も無い結果となっている．

しかしどうしても劣化が気になるという場合は，鮮鋭化という処理をすることで不鮮明な部分をシャープにすることが出来る．メディアンフィルタ適用後の画像に鮮鋭化をした例を図6に示すが，この例では全体的に灰色になっており，かえって不鮮明に見えてしまうという結果になっている．  
また，今回はこちらのサイトに載せられている鮮鋭化フィルタを用いた．  
*http://www.mvision.co.jp/WebHelpIM/_RESOURCE/Filter_Mvc_Sharpen.html*

<pre><code>
f2=[-1, -1, -1; -1, 16, -1; -1, -1, -1] .* (1 / 8);
IMG = filter2(f2,IMG,'same');
</code></pre>

![鮮鋭化](https://raw.githubusercontent.com/gasagasa/lecture_image_processing/master/image/kadai9_4.png?raw=true)
図5 鮮鋭化後
