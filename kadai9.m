% �ۑ�X ���f�B�A���t�B���^�Ɛ�s��
% ���f�B�A���t�B���^�[��K�p���C�m�C�Y������̌�����D
% �e���CLenna�ȊO�̉摜��p����D
% ��

clearvars; close all; clc;

ORG = imread('image/game_keitai_broken_kids.png'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
imagesc(ORG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;
ORG = imnoise(ORG,'salt & pepper',0.02); % �m�C�Y�Y�t
imagesc(ORG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;
IMG = filter2(fspecial('average',3),ORG); % �������t�B���^�ŎG������
imagesc(IMG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;
IMG = medfilt2(ORG,[3 3]); % ���f�B�A���t�B���^�ŎG������
imagesc(IMG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;
% f=[0,-1,0;-1,5,-1;0,-1,0]; % �t�B���^�̐݌v
% IMG = filter2(f,IMG,'same'); % �t�B���^�̓K�p
% imagesc(IMG); colormap(gray); colorbar; axis image; % �摜�̕\��
% pause;
f2=[-1, -1, -1; -1, 16, -1; -1, -1, -1] .* (1 / 8);
IMG = filter2(f2,IMG,'same');
imagesc(IMG); colormap(gray); colorbar; axis image; % �摜�̕\��

return;