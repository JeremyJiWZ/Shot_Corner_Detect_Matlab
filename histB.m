function [ hist ] = histB( image )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ ���ͼ��Bͨ����ֱ��ͼ����
%   �˴���ʾ��ϸ˵��
%   ��ͼ���Bͨ����ֱ��ͼ�������
B = image(:,:,3);
hist = imhist(B);

end

