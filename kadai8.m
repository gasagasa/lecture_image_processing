% �ۑ�W ���x�����O
% ��l�����ꂽ�摜�̘A�������Ƀ��x��������D
% ���L�̓T���v���v���O�����ł���D 
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D 
% ��

ORG = imread('image/game_keitai_broken_kids.png'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;
IMG = ORG > 128; % 臒l128�œ�l��
imagesc(IMG); colormap(gray); colorbar; axis image;% �摜�̕\��
pause;
IMG = bwlabeln(IMG, 8);
imagesc(IMG); colormap(jet); colorbar; axis image;% �摜�̕\��
pause;