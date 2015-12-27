function [ hist ] = histR( image )
%UNTITLED5 此处显示有关此函数的摘要 输出图像R通道的直方图数据
%   此处显示详细说明
%   将图像的R通道的直方图矩阵输出
R = image(:,:,1);
hist = imhist(R);

end

