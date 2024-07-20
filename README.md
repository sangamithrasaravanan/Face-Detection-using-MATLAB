# Face-Detection-using-MATLAB

This project demonstrates live face detection using MATLAB and a webcam. 
It utilizes the Viola-Jones algorithm implemented in MATLAB's Computer Vision Toolbox to detect faces in real-time.

## Requirements

- MATLAB (with Computer Vision Toolbox)
- A webcam

## Installation

1. Ensure MATLAB is installed on your local machine. You can download it from the [MathWorks website](https://www.mathworks.com/products/matlab.html).
2. Install the Computer Vision Toolbox if it is not already installed. This can be done through MATLAB's Add-On Explorer


## Steps 

1. Initialization: Initializes the webcam and the face detector object.
2. Display Initial Image: Captures and displays an initial frame from the webcam.
3. Infinite Loop: Continuously captures frames, detects faces, and displays the annotated frames.
4. Break Condition: Checks if the 'q' key is pressed to exit the loop gracefully. The check ensures the loop can be stopped without abruptly terminating the script.
5. Pause: Adds a brief pause to allow the display to update and make the loop less CPU-intensive.
6. Resource Cleanup: Releases the webcam and closes all figures when the loop is terminated.
