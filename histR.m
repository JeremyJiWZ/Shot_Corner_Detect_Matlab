function [ hist ] = histR( image )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ ���ͼ��Rͨ����ֱ��ͼ����
%   �˴���ʾ��ϸ˵��
%   ��ͼ���Rͨ����ֱ��ͼ�������
R = image(:,:,1);
hist = imhist(R);

end

