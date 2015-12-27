% clc;clear;clf;
% d=dir('images1');
% NOF=max(size(d)-2);
% ECR = zeros(NOF-1,1);
% for i=1:NOF-1
%     img_i=imread(['images1/' num2str(i-1) '.jpg']);
%     img_i_plus=imread(['images1/' num2str(i) '.jpg']);
%     imd1 = rgb2gray(img_i);
%     imd2 = rgb2gray(img_i_plus);
%     
%     % black background image
%     bw1 = edge(imd1, 'sobel');
%     bw2 = edge(imd2, 'sobel');
%     
%     % invert image to white background
%     ibw2 = 1-bw2;
%     ibw1 = 1-bw1;
%     
%     s1 = size(find(ibw1),1);
%     s2 = size(find(ibw2),1);
%     
%     % dilate
%     se = strel('square',3);
%     dbw1 = imdilate(bw1, se);
%     dbw2 = imdilate(bw2, se);
%     
%     imIn = dbw1 & ibw2;
%     imOut = dbw2 & ibw1;
%     
%     ECRIn = size(find(imIn),1)/s2;
%     ECROut = size(find(imOut),1)/s1;
%     
%     ECR(i) = max(ECRIn, ECROut);
% end
ECRdf = zeros(NOF-1,1);
for i=2:NOF-1
    ECRdf(i)=ECR(i)-ECR(i-1)+0.2;
end;
% Threshold = mean(ECRdf);
%window size =9, W=4
for i=5:length(ECR)-5
%     if(ECR(i)>Threshold)
%        fprintf('%d\n',i);
%     end;
    %输出极大值点
    Threshold=0;
    for j=i-4:i+4
        if(j~=i)
            Threshold=Threshold+ECRdf(j);
        end;
    end;
    Threshold = 1.15*Threshold/8;
    if(ECRdf(i)>Threshold)
        if((ECR(i)>ECR(i-4)&&ECR(i)>ECR(i-3)&&...
                ECR(i)>ECR(i-2)&&ECR(i)>ECR(i-1)&&...
                ECR(i)>ECR(i+1)&&ECR(i)>ECR(i+2)&&...
                ECR(i)>ECR(i+3)&&ECR(i)>ECR(i+4)))
            fprintf('%d\n',i);
        end;
    end;
end;