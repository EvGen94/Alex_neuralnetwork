%Access the trained model 
net = alexnet 
% See details of the architecture 
net.Layers 
% Read the image to classify 
I = imread('peppers.png'); 
% Adjust size of the image 
sz = net.Layers(1).InputSize 
I = I(1:sz(1),1:sz(2),1:sz(3)); 
% Classify the image using AlexNet 
label = classify(net, I) 
% Show the image and the classification results 
figure 
imshow(I) 
text(10,20,char(label),'Color','white')

clear 
figure
camera = webcam('User Facing Right') ;
nnet = alexnet;
while true
    picture = camera.snapshot;
    picture = imresize(picture,[227,227]);
    label = classify(nnet, picture);
    image(picture);
    title(char(label))
    drawnow;

end

