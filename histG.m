function [ hist ] = histG( image )
%UNTITLED5 此处显示有关此函数的摘要 输出图像G通道的直方图数据
%   此处显示详细说明
%   将图像的G通道的直方图矩阵输出
G = image(:,:,2);
hist = imhist(G);

end

