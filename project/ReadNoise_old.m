%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PSYCH 221 : Google Pixel 4A Noise Model - Read Noise Estimation
% Authors : Melissa Horowitz, Joey Yurgelon
% Date : 11/3/2020
% Required File Structure : 
%          See 'project/README.txt' - MATLAB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all 
close all
clc

img_path = "Camera_Noise/ReadNoise/ISO_*/";

% Load in all of the '.DNG' Files
disp('Loading in the DNG Files..')
files = dir(img_path + '*.dng');
for i=1:length(files)
   files(i).name;
   [img, info] = ieDNGRead(files(i).name); % The image data and the header information
   info;
   data(i).img = img;
   data(i).imgMean = mean2(img);
   data(i).imgSTD = std2(img);
   data(i).isoSpeed = info.ISOSpeedRatings;
   data(i).fNumber = info.FNumber;
   data(i).focalLength = info.FocalLength;
   data(i).exposureTime = info.ExposureTime;
   
   switch info.ISOSpeedRatings
        case 55
            data(i).imgMeanNorm = mean2(img);
            data(i).imgSTDNorm = std2(img);
        case 99
            data(i).imgMeanNorm = mean2(img/1.8);
            data(i).imgSTDNorm = std2(img/1.8);
        case 198
            data(i).imgMeanNorm = mean2(img/3.6);
            data(i).imgSTDNorm = std2(img/3.6);
        case 299
            data(i).imgMeanNorm = mean2(img/5.44);
            data(i).imgSTDNorm = std2(img/5.44);
        case 395
            data(i).imgMeanNorm = mean2(img/7.18);
            data(i).imgSTDNorm = std2(img/7.18);
        case 798
            data(i).imgMeanNorm = mean2(img/14.51);
            data(i).imgSTDNorm = std2(img/14.51);
%         case 1598
%             data(i).imgMeanNorm = mean2(img/35.29);
%             data(i).imgSTDNorm = std2(img/35.29);
%         case 3199
%             data(i).imgMeanNorm = mean2(img/58.164);
%             data(i).imgSTDNorm = std2(img/58.164);
    end
end

disp('Preparing the Structures..')
% Bin the data based on uniqure isoSpeed settings
for i=1:length(data)
% This file is checked into the repository, so we use it as an example
    switch data(i).isoSpeed
        case 55
            data_55(i) = data(i);
        case 99
            data_99(i) = data(i);
        case 198
            data_198(i) = data(i);
        case 299
            data_299(i) = data(i);
        case 395
            data_395(i) = data(i);
        case 798
            data_798(i) = data(i);
%         case 1598
%             data_1598(i) = data(i);
%         case 3199
%             data_3199(i) = data(i);
    end
end

% Remove empty rows from the structures
data_55 = data_55(all(~cellfun(@isempty,struct2cell(data_55))));
data_99 = data_99(all(~cellfun(@isempty,struct2cell(data_99))));
data_198 = data_198(all(~cellfun(@isempty,struct2cell(data_198))));
data_299 = data_299(all(~cellfun(@isempty,struct2cell(data_299))));
data_395 = data_395(all(~cellfun(@isempty,struct2cell(data_395))));
data_798 = data_798(all(~cellfun(@isempty,struct2cell(data_798))));
%data_1598 = data_1598(all(~cellfun(@isempty,struct2cell(data_1598))));
%data_3199 = data_3199(all(~cellfun(@isempty,struct2cell(data_3199))));


% Create sorted table and structures of the data binned by isoSpeed
T = struct2table(data_55); % convert the struct array to a table
data_55T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
data_55S = table2struct(data_55T); % change it back to struct array if necessary

T = struct2table(data_99); % convert the struct array to a table
data_99T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
data_99S = table2struct(data_99T); % change it back to struct array if necessary

T = struct2table(data_198); % convert the struct array to a table
data_198T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
data_198S = table2struct(data_198T); % change it back to struct array if necessary

T = struct2table(data_299); % convert the struct array to a table
data_299T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
data_299S = table2struct(data_299T); % change it back to struct array if necessary

T = struct2table(data_395); % convert the struct array to a table
data_395T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
data_395S = table2struct(data_395T); % change it back to struct array if necessary

T = struct2table(data_798); % convert the struct array to a table
data_798T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
data_798S = table2struct(data_798T); % change it back to struct array if necessary

% T = struct2table(data_1598); % convert the struct array to a table
% data_1598T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
% data_1598S = table2struct(data_1598T) % change it back to struct array if necessary
% 
% T = struct2table(data_3199); % convert the struct array to a table
% data_3199T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
% data_3199S = table2struct(data_3199T); % change it back to struct array if necessary

% Might be required to unravel the img to generate box plot
% data_55_img_unravel = data_55S(1).img(:);
% for i=2:length(data_55S)
%     vec = data_55S(i).img(:);
%     data_55_img_unravel = horzcat(data_55_img_unravel,vec);
% end


% Plot the data for each isoSpeed setting (Data is not normalized)
figure(1)
hold on
errorbar(data_55T.exposureTime, data_55T.imgMean, data_55T.imgSTD, 'DisplayName', '55')
errorbar(data_99T.exposureTime, data_99T.imgMean, data_99T.imgSTD, 'DisplayName', '99')
errorbar(data_198T.exposureTime, data_198T.imgMean, data_198T.imgSTD, 'DisplayName', '198')
errorbar(data_299T.exposureTime, data_299T.imgMean, data_299T.imgSTD, 'DisplayName', '299')
errorbar(data_395T.exposureTime, data_395T.imgMean, data_395T.imgSTD, 'DisplayName', '395')
errorbar(data_798T.exposureTime, data_798T.imgMean, data_798T.imgSTD, 'DisplayName', '798')
% errorbar(data_1598T.exposureTime, data_1598T.imgMean, data_1598T.imgSTD)
% errorbar(data_3199T.exposureTime, data_3199T.imgMean, data_3199T.imgSTD)
title('Exposure Time (s) vs. DN')
xlabel('Exposure Time (s)')
ylabel('Digital Number (16-bit FS)')
legend
%legend('55', '99', '198', '299', '395', '798')

% Plot the data for each isoSpeed setting (Data is normalized)
figure(2)
hold on
errorbar(data_55T.exposureTime, data_55T.imgMeanNorm, data_55T.imgSTDNorm, 'DisplayName', '55')
errorbar(data_99T.exposureTime, data_99T.imgMeanNorm, data_99T.imgSTDNorm, 'DisplayName', '99')
errorbar(data_198T.exposureTime, data_198T.imgMeanNorm, data_198T.imgSTDNorm, 'DisplayName', '198')
errorbar(data_299T.exposureTime, data_299T.imgMeanNorm, data_299T.imgSTDNorm, 'DisplayName', '299')
errorbar(data_395T.exposureTime, data_395T.imgMeanNorm, data_395T.imgSTDNorm, 'DisplayName', '395')
errorbar(data_798T.exposureTime, data_798T.imgMeanNorm, data_798T.imgSTDNorm, 'DisplayName', '798')
% errorbar(data_1598T.exposureTime, data_1598T.imgMeanNorm, data_1598T.imgSTDNorm)
%errorbar(data_3199T.exposureTime, data_3199T.imgMeanNorm, data_3199T.imgSTDNorm)
title('Exposure Time (s) vs. DN (Normalized)')
xlabel('Exposure Time (s)')
ylabel('Digital Number (16-bit FS)')
legend
%legend('55', '99', '198', '299', '395', '798')