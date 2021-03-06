% clc;clear;clf;
% d=dir('images1');  
% NOF=max(size(d)-2);  
% img_diff=zeros(NOF-1,1);  
% 
% for i=1:NOF-1  
%     img_i=imread(['images1/' num2str(i-1) '.jpg']);  
%     img_i_plus=imread(['images1/' num2str(i) '.jpg']);  
% % %     imshow(img_i);
% %     Hist1=imhist(rgb2gray(img_i));  
% %     Hist2=imhist(rgb2gray(img_i_plus));  
% % %     imshow(rgb2gray(img_i));
% %     S=0;   %S表示直方图的交，此图为转为灰度图的图像 
% %     for j=1:256  
% %         S=S+min(Hist1(j),Hist2(j));  
% %     end;  
% %     H=sum(Hist1);  
% %     img_diff(i)=S/H;  
%     %分别统计两幅图像RGB通道的直方图
%     Hist1R=histR(img_i);
%     Hist1G=histG(img_i);
%     Hist1B=histB(img_i);
%     Hist2R=histR(img_i_plus);
%     Hist2G=histG(img_i_plus);
%     Hist2B=histB(img_i_plus);
%     Sr=0;Sg=0;Sb=0;
%     for j=1:256
%        Sr=Sr+min(Hist1R(j),Hist2R(j)); 
%     end;
%     for j=1:256
%        Sg=Sg+min(Hist1G(j),Hist2G(j)); 
%     end;
%     for j=1:256
%        Sb=Sb+min(Hist1B(j),Hist2B(j)); 
%     end;
%     num = numel(img_i);
%     img_diff(i)=1-(Sr+Sg+Sb)/num;
% end;  
% Threshold = mean(img_diff)*0.5;%人工调整系数
img_df = zeros(NOF-1,1);
img_df(1)=0;
for i=2:length(img_df)
    img_df(i)=img_diff(i)-img_diff(i-1);
end;
for i=5:length(img_diff)-4  
%     设置全局threshold
%     if(img_diff(i)<Threshold)  
%        fprintf('%d\n',i);  
%     end;
    %寻找极值点，表示该处为变化明显处
    %窗口大小为9，左边-4，右边+4
    %下面的条件为最小值点
    if(img_df(i)>0.1)
        if((img_diff(i)>img_diff(i-4)&&img_diff(i)>img_diff(i-3)&&...
            img_diff(i)>img_diff(i-2)&&img_diff(i)>img_diff(i-1)&&...
            img_diff(i)>img_diff(i+1)&&img_diff(i)>img_diff(i+2)&&...
            img_diff(i)>img_diff(i+3)&&img_diff(i)>img_diff(i+4)))
            fprintf('%d\n',i);
        end;
    end;
end;  
