% Initialize webcam
web = webcam();

% Create a face detector object
dete = vision.CascadeObjectDetector();

% Display the initial image
im = snapshot(web);
imshow(im);
title('Press Q to stop');

% Infinite loop for real-time face detection
while true
    % Capture a frame
    im = snapshot(web);
    
    % Convert frame to grayscale
    im2 = rgb2gray(im);
    
    % Detect faces
    bbox = step(dete, im2);
    
    % Annotate detected faces
    pic = insertObjectAnnotation(im, 'rectangle', bbox, 'Face');
    
    % Display the annotated frame
    imshow(pic);
    title('Press Q to stop');
    
    % Check for 'q' key press to exit the loop
    if ~isempty(findobj('type', 'figure')) && strcmp(get(gcf, 'CurrentCharacter'), 'q')
        break;
    end
    
    % Pause briefly to allow for display update
    pause(0.01);
end

% Release the webcam
clear('web');
close all;
