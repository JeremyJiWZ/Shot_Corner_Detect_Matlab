function [ hist ] = histG( image )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ ���ͼ��Gͨ����ֱ��ͼ����
%   �˴���ʾ��ϸ˵��
%   ��ͼ���Gͨ����ֱ��ͼ�������
G = image(:,:,2);
hist = imhist(G);

end

