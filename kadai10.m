% �ۑ�10 �摜�̃G�b�W���o 
% ���̃v���O�������Q�l�ɂ��āC�G�b�W���o��̌�����D
% �e���CLenna�ȊO�̉摜��p����D 
% ��

clearvars; close all; clc;

ORG = imread('image/game_keitai_broken_kids.png'); % ���摜�̓���
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
imagesc(ORG); colormap('gray'); colorbar; axis image;% �摜�\��
pause; % �ꎞ��~

IMG = edge(ORG,'prewitt'); % �G�b�W���o�i�v���E�B�b�g�@�j
imagesc(IMG); colormap('gray'); colorbar; axis image;% �摜�\��
pause; % �ꎞ��~

IMG = edge(ORG,'sobel'); % �G�b�W���o�i�\�x���@�j
imagesc(IMG); colormap('gray'); colorbar; axis image;% �摜�\��
pause; % �ꎞ��~

IMG = edge(ORG,'canny'); % �G�b�W���o�i�L���j�[�@�j
imagesc(IMG); colormap('gray'); colorbar; axis image;% �摜�\��

return;