
%% LAB:07 Finding the edges (UI22EC62)
% AIM :For the color image, convert to RGB to Gray and finding the edges 
% using following operators: 
% 1) Prewitt Operators. 
% 2) Sobel Operators. 
% 3) Use of smoothing filter / averaging filter with Sobel operator.

clc; 
clear all; 
close all; 
datetime


% MATLAB code to convert RGB to Grayscale and find edges using Prewitt, Sobel operators
% Also applying a smoothing filter with Sobel operator

% Read the input color image
image = imread('lena.jpg');

% Convert the color image to grayscale
gray_image = rgb2gray(image);

% Display the grayscale image
figure;
imshow(gray_image);
title('Grayscale Image');

%% 1) Edge detection using Prewitt operator
prewitt_edges = edge(gray_image, 'Prewitt');

% Display the edges detected using Prewitt operator
figure;
imshow(prewitt_edges);
title('Edges using Prewitt Operator');

%% 2) Edge detection using Sobel operator
sobel_edges = edge(gray_image, 'Sobel');

% Display the edges detected using Sobel operator
figure;
imshow(sobel_edges);
title('Edges using Sobel Operator');

%% 3) Applying Smoothing/Averaging filter with Sobel operator
% Define a 3x3 averaging filter (smoothing filter)
avg_filter = fspecial('average', [3 3]);

% Apply the smoothing filter to the grayscale image
smoothed_image = imfilter(gray_image, avg_filter);

% Apply Sobel edge detection to the smoothed image
sobel_edges_smoothed = edge(smoothed_image, 'Sobel');

% Display the edges detected using Sobel operator after smoothing
figure;
imshow(sobel_edges_smoothed);
title('Edges using Sobel Operator after Smoothing (Averaging Filter)');
