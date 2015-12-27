function [ hist ] = histB( image )
%UNTITLED5 此处显示有关此函数的摘要 输出图像B通道的直方图数据
%   此处显示详细说明
%   将图像的B通道的直方图矩阵输出
B = image(:,:,3);
hist = imhist(B);

end

