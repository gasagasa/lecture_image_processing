% �ۑ�U�@�摜�̓�l��
% ���L�̃v���O�������Q�l�ɂ��ĉ摜���l������D
% ���L�̓T���v���v���O�����ł���D
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D

clear; % �ϐ��̃I�[���N���A
ORG=imread('game_keitai_broken_kids.png'); % ���摜�̓���
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = ORG>128; % 128�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;

IMG = dither(ORG); % �f�B�U�@�ɂ���l��
imagesc(IMG); colormap(gray); colorbar; axis image; % �摜�̕\��