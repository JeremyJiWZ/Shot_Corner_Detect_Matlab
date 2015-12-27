
%%%%Ã·»°Õº∆¨–Ú¡–%%%%%%
fileName='dji2.mp4';
video=VideoReader(fileName);
%NOF=video.NumberOfFrames;
%mkdir([cd,'/images1/'])
directory=[cd,'/images/'];
i=0;
% implay(video);
while hasFrame(video)
     img = readFrame(video);
     %imshow(img);
     imwrite(img,[directory,[num2str(i) '.bmp'];]);
     i=i+1;
end;
