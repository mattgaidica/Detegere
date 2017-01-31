analyzeVideo = '/Users/mattgaidica/Dropbox/Projects/Dauer Lab/Mouse Tremor/IMG_2582-clip.mov';
v = VideoReader(analyzeVideo);

frameMatrix = [];
frameCount = 0;
height = 100; % pixels
while hasFrame(v)
    frameCount = frameCount + 1;
    frame = readFrame(v);
    if isempty(frameMatrix)
        h = figure;
        imshow(frame);
        [x,y] = ginput(1);
        x = round(x)
        y = round(y)
        close(h);
    end
    frameMatrix(:,frameCount,:) = frame(y-height:y+height,x,:); % row
%     frameMatrix(frameCount,:,:) = frame(y,x-height:x+height,:); % col
    disp(num2str(frameCount));
end
figure;imshow(uint8(frameMatrix));