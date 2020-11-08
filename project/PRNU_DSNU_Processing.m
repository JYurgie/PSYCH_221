%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PSYCH 221 : Google Pixel 4A Noise Model - Read Noise Estimation
% Authors : Melissa Horowitz, Joey Yurgelon
% Date : 11/3/2020
% Required File Structure : 
%          See 'project/README.txt' - MATLAB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load in the specific structure generated by the GenerateDataStructures
% script. This takes a long time. Load it in and then manipulate the data.

load('Z:\PRNU_DSNU_Data')

%% Manipulation of the data. 

T = struct2table(data_55S); % convert the struct array to a table
data_55T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
T = struct2table(data_99S); % convert the struct array to a table
data_99T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
T = struct2table(data_198S); % convert the struct array to a table
data_198T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
T = struct2table(data_299S); % convert the struct array to a table
data_299T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
T = struct2table(data_395S); % convert the struct array to a table
data_395T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'
T = struct2table(data_798S); % convert the struct array to a table
data_798T = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'

j = 1;
 for i = 1:5:length(data_55T.exposureTime)
     x1 = data_55S(i);
     x2 = data_55S(i+1);
     x3 = data_55S(i+2);
     x4 = data_55S(i+3);
     x5 = data_55S(i+4);
     
     data_55S_avg(j).imgMean = (x1.imgMean + x2.imgMean + x3.imgMean + x4.imgMean  + x5.imgMean)/5;
     data_55S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     data_55S_avg(j).imgMeanNorm = (x1.imgMeanNorm + x2.imgMeanNorm + x3.imgMeanNorm + x4.imgMeanNorm  + x5.imgMeanNorm)/5;
     data_55S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     
     
     data_55S_avg(j).rMean = (x1.rMean + x2.rMean + x3.rMean + x4.rMean  + x5.rMean)/5;
     data_55S_avg(j).gMean = (x1.gMean + x2.gMean + x3.gMean + x4.gMean  + x5.gMean)/5;
     data_55S_avg(j).bMean = (x1.bMean + x2.bMean + x3.bMean + x4.bMean  + x5.bMean)/5;
     
     data_55S_avg(j).rMeanNorm = (x1.rMeanNorm + x2.rMeanNorm + x3.rMeanNorm + x4.rMeanNorm  + x5.rMeanNorm)/5;
     data_55S_avg(j).gMeanNorm = (x1.gMeanNorm + x2.gMeanNorm + x3.gMeanNorm + x4.gMeanNorm  + x5.gMeanNorm)/5;
     data_55S_avg(j).bMeanNorm = (x1.bMeanNorm + x2.bMeanNorm + x3.bMeanNorm + x4.bMeanNorm  + x5.bMeanNorm)/5;
     
     j = j + 1;  
 end
 
 j = 1;
 for i = 1:5:length(data_99T.exposureTime)
     x1 = data_99S(i);
     x2 = data_99S(i+1);
     x3 = data_99S(i+2);
     x4 = data_99S(i+3);
     x5 = data_99S(i+4);
     
     data_99S_avg(j).imgMean = (x1.imgMean + x2.imgMean + x3.imgMean + x4.imgMean  + x5.imgMean)/5;
     data_99S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     data_99S_avg(j).imgMeanNorm = (x1.imgMeanNorm + x2.imgMeanNorm + x3.imgMeanNorm + x4.imgMeanNorm  + x5.imgMeanNorm)/5;
     data_99S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     
     data_99S_avg(j).rMean = (x1.rMean + x2.rMean + x3.rMean + x4.rMean  + x5.rMean)/5;
     data_99S_avg(j).gMean = (x1.gMean + x2.gMean + x3.gMean + x4.gMean  + x5.gMean)/5;
     data_99S_avg(j).bMean = (x1.bMean + x2.bMean + x3.bMean + x4.bMean  + x5.bMean)/5;     

     data_99S_avg(j).rMeanNorm = (x1.rMeanNorm + x2.rMeanNorm + x3.rMeanNorm + x4.rMeanNorm  + x5.rMeanNorm)/5;
     data_99S_avg(j).gMeanNorm = (x1.gMeanNorm + x2.gMeanNorm + x3.gMeanNorm + x4.gMeanNorm  + x5.gMeanNorm)/5;
     data_99S_avg(j).bMeanNorm = (x1.bMeanNorm + x2.bMeanNorm + x3.bMeanNorm + x4.bMeanNorm  + x5.bMeanNorm)/5;
     
     j = j + 1;  
 end
 
 j = 1;
 for i = 1:5:length(data_198T.exposureTime)
     x1 = data_198S(i);
     x2 = data_198S(i+1);
     x3 = data_198S(i+2);
     x4 = data_198S(i+3);
     x5 = data_198S(i+4);
     
     data_198S_avg(j).imgMean = (x1.imgMean + x2.imgMean + x3.imgMean + x4.imgMean  + x5.imgMean)/5;
     data_198S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     data_198S_avg(j).imgMeanNorm = (x1.imgMeanNorm + x2.imgMeanNorm + x3.imgMeanNorm + x4.imgMeanNorm  + x5.imgMeanNorm)/5;
     data_198S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     
     data_198S_avg(j).rMean = (x1.rMean + x2.rMean + x3.rMean + x4.rMean  + x5.rMean)/5;
     data_198S_avg(j).gMean = (x1.gMean + x2.gMean + x3.gMean + x4.gMean  + x5.gMean)/5;
     data_198S_avg(j).bMean = (x1.bMean + x2.bMean + x3.bMean + x4.bMean  + x5.bMean)/5;        
     
     data_198S_avg(j).rMeanNorm = (x1.rMeanNorm + x2.rMeanNorm + x3.rMeanNorm + x4.rMeanNorm  + x5.rMeanNorm)/5;
     data_198S_avg(j).gMeanNorm = (x1.gMeanNorm + x2.gMeanNorm + x3.gMeanNorm + x4.gMeanNorm  + x5.gMeanNorm)/5;
     data_198S_avg(j).bMeanNorm = (x1.bMeanNorm + x2.bMeanNorm + x3.bMeanNorm + x4.bMeanNorm  + x5.bMeanNorm)/5;
     
     j = j + 1;  
 end
 
 j = 1;
 for i = 1:5:length(data_299T.exposureTime)
     x1 = data_299S(i);
     x2 = data_299S(i+1);
     x3 = data_299S(i+2);
     x4 = data_299S(i+3);
     x5 = data_299S(i+4);
     
     data_299S_avg(j).imgMean = (x1.imgMean + x2.imgMean + x3.imgMean + x4.imgMean  + x5.imgMean)/5;
     data_299S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     data_299S_avg(j).imgMeanNorm = (x1.imgMeanNorm + x2.imgMeanNorm + x3.imgMeanNorm + x4.imgMeanNorm  + x5.imgMeanNorm)/5;
     data_299S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     
     data_299S_avg(j).rMean = (x1.rMean + x2.rMean + x3.rMean + x4.rMean  + x5.rMean)/5;
     data_299S_avg(j).gMean = (x1.gMean + x2.gMean + x3.gMean + x4.gMean  + x5.gMean)/5;
     data_299S_avg(j).bMean = (x1.bMean + x2.bMean + x3.bMean + x4.bMean  + x5.bMean)/5;           
     
     data_299S_avg(j).rMeanNorm = (x1.rMeanNorm + x2.rMeanNorm + x3.rMeanNorm + x4.rMeanNorm  + x5.rMeanNorm)/5;
     data_299S_avg(j).gMeanNorm = (x1.gMeanNorm + x2.gMeanNorm + x3.gMeanNorm + x4.gMeanNorm  + x5.gMeanNorm)/5;
     data_299S_avg(j).bMeanNorm = (x1.bMeanNorm + x2.bMeanNorm + x3.bMeanNorm + x4.bMeanNorm  + x5.bMeanNorm)/5;
     
     j = j + 1;  
 end
 
  j = 1;
 for i = 1:5:length(data_395T.exposureTime)
     x1 = data_395S(i);
     x2 = data_395S(i+1);
     x3 = data_395S(i+2);
     x4 = data_395S(i+3);
     x5 = data_395S(i+4);
     
     data_395S_avg(j).imgMean = (x1.imgMean + x2.imgMean + x3.imgMean + x4.imgMean  + x5.imgMean)/5;
     data_395S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     data_395S_avg(j).imgMeanNorm = (x1.imgMeanNorm + x2.imgMeanNorm + x3.imgMeanNorm + x4.imgMeanNorm  + x5.imgMeanNorm)/5;
     data_395S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     
     data_395S_avg(j).rMean = (x1.rMean + x2.rMean + x3.rMean + x4.rMean  + x5.rMean)/5;
     data_395S_avg(j).gMean = (x1.gMean + x2.gMean + x3.gMean + x4.gMean  + x5.gMean)/5;
     data_395S_avg(j).bMean = (x1.bMean + x2.bMean + x3.bMean + x4.bMean  + x5.bMean)/5;         
     
     data_395S_avg(j).rMeanNorm = (x1.rMeanNorm + x2.rMeanNorm + x3.rMeanNorm + x4.rMeanNorm  + x5.rMeanNorm)/5;
     data_395S_avg(j).gMeanNorm = (x1.gMeanNorm + x2.gMeanNorm + x3.gMeanNorm + x4.gMeanNorm  + x5.gMeanNorm)/5;
     data_395S_avg(j).bMeanNorm = (x1.bMeanNorm + x2.bMeanNorm + x3.bMeanNorm + x4.bMeanNorm  + x5.bMeanNorm)/5;
     
     j = j + 1;  
 end
 
 j = 1;
 for i = 1:5:length(data_798T.exposureTime)
     x1 = data_798S(i);
     x2 = data_798S(i+1);
     x3 = data_798S(i+2);
     x4 = data_798S(i+3);
     x5 = data_798S(i+4);
     
     data_798S_avg(j).imgMean = (x1.imgMean + x2.imgMean + x3.imgMean + x4.imgMean  + x5.imgMean)/5;
     data_798S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     data_798S_avg(j).imgMeanNorm = (x1.imgMeanNorm + x2.imgMeanNorm + x3.imgMeanNorm + x4.imgMeanNorm  + x5.imgMeanNorm)/5;
     data_798S_avg(j).exposureTime = (x1.exposureTime + x2.exposureTime + x3.exposureTime + x4.exposureTime  + x5.exposureTime)/5;
     
     data_798S_avg(j).rMean = (x1.rMean + x2.rMean + x3.rMean + x4.rMean  + x5.rMean)/5;
     data_798S_avg(j).gMean = (x1.gMean + x2.gMean + x3.gMean + x4.gMean  + x5.gMean)/5;
     data_798S_avg(j).bMean = (x1.bMean + x2.bMean + x3.bMean + x4.bMean  + x5.bMean)/5;        
     
     data_798S_avg(j).rMeanNorm = (x1.rMeanNorm + x2.rMeanNorm + x3.rMeanNorm + x4.rMeanNorm  + x5.rMeanNorm)/5;
     data_798S_avg(j).gMeanNorm = (x1.gMeanNorm + x2.gMeanNorm + x3.gMeanNorm + x4.gMeanNorm  + x5.gMeanNorm)/5;
     data_798S_avg(j).bMeanNorm = (x1.bMeanNorm + x2.bMeanNorm + x3.bMeanNorm + x4.bMeanNorm  + x5.bMeanNorm)/5;
          
     j = j + 1;  
 end
 
 
%data_55S_avg.imgMeanNorm(cellfun('isempty',data_55S_avg.imgMeanNorm)) = []
 
%data_55S_avg.imgMeanNorm = data_55S_avg.imgMeanNorm(all(~cellfun(@isempty,struct2cell(data_55S_avg))));

T = struct2table(data_55S_avg); % convert the struct array to a table
data_55T_avg = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'

T = struct2table(data_99S_avg); % convert the struct array to a table
data_99T_avg = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'

T = struct2table(data_198S_avg); % convert the struct array to a table
data_198T_avg = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'

T = struct2table(data_299S_avg); % convert the struct array to a table
data_299T_avg = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'

T = struct2table(data_395S_avg); % convert the struct array to a table
data_395T_avg = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'

T = struct2table(data_798S_avg); % convert the struct array to a table
data_798T_avg = sortrows(T, 'exposureTime'); % sort the table by 'exposureTime'




% NON-NORMALIZED ---- SENSOR ARRAY
figure(1)
hold on
% Plot a single ISOSpeed - 55
bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.imgMean, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.imgMean, 'r', 'DisplayName', '55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', '55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 99
bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.imgMean, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.imgMean, 'r', 'DisplayName', '99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', '99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 198
bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.imgMean, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.imgMean, 'g', 'DisplayName', '198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', '198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 299
bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.imgMean, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.imgMean, 'b', 'DisplayName', '299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', '299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 395
bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.imgMean, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.imgMean, 'c', 'DisplayName', '395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', '395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 798
bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.imgMean, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.imgMean, 'm', 'DisplayName', '798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', '798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);
title('DN vs. Exposure Time (s)')
xlabel('Exposure Time (s)')
ylabel('Digital Number (16-bit FS)')
legend


hold off

% NORMALIZED ------ SENSOR ARRAY
figure(2)
hold on
% Plot a single ISOSpeed - 55
bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.imgMeanNorm, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.imgMeanNorm, 'r', 'DisplayName', '55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', '55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 99
bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.imgMeanNorm, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.imgMeanNorm, 'r', 'DisplayName', '99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', '99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 198
bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.imgMeanNorm, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.imgMeanNorm, 'g', 'DisplayName', '198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', '198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 299
bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.imgMeanNorm, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.imgMeanNorm, 'b', 'DisplayName', '299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', '299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 395
bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.imgMeanNorm, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.imgMeanNorm, 'c', 'DisplayName', '395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', '395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 798
bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.imgMeanNorm, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.imgMeanNorm, 'm', 'DisplayName', '798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', '798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);
title('DN vs. Exposure Time (s)')
xlabel('Exposure Time (s)')
ylabel('Digital Number (16-bit FS)')
legend

hold off





% NON-NORMALIZED ---- CHANNELS
figure(3)
hold on
% Plot a single ISOSpeed - 55
bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.rMean, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.rMean, 'r', 'DisplayName', 'r55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'r55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.gMean, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.gMean, 'g', 'DisplayName', 'g55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'g55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.bMean, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.bMean, 'b', 'DisplayName', 'b55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'b55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);


% Plot a single ISOSpeed - 99
bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.rMean, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.rMean, 'r', 'DisplayName', 'r99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'r99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.gMean, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.gMean, 'g', 'DisplayName', 'g99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'g99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.bMean, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.bMean, 'b', 'DisplayName', 'b99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'b99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 198
bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.rMean, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.rMean, 'r', 'DisplayName', 'r198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', 'r198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.gMean, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.gMean, 'g', 'DisplayName', 'g198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', 'g198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.bMean, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.bMean, 'b', 'DisplayName', 'b198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', 'b198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 299
bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.rMean, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.rMean, 'b', 'DisplayName', 'r299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', 'r299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.gMean, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.gMean, 'g', 'DisplayName', 'g299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', 'g299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.bMean, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.bMean, 'b', 'DisplayName', 'b299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', 'b299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 395
bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.rMean, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.rMean, 'r', 'DisplayName', 'r395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', 'r395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.gMean, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.gMean, 'c', 'DisplayName', 'g395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', 'g395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.bMean, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.bMean, 'b', 'DisplayName', 'b395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', 'b395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 798
bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.rMean, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.rMean, 'r', 'DisplayName', 'r798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', 'r798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);

bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.gMean, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.gMean, 'g', 'DisplayName', 'g798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', 'g798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);

bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.bMean, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.bMean, 'm', 'DisplayName', 'b798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', 'b798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);

title('DN vs. Exposure Time (s)')
xlabel('Exposure Time (s)')
ylabel('Digital Number (16-bit FS)')
legend


hold off

% NORMALIZED ------ CHANNELS
figure(4)
hold on
% Plot a single ISOSpeed - 55
bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.rMeanNorm, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.rMeanNorm, 'r', 'DisplayName', 'r55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'r55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.gMeanNorm, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.gMeanNorm, 'g', 'DisplayName', 'g55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'g55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_55T_avg.exposureTime, data_55T_avg.bMeanNorm, 1);
orig1 = polyval(bestfit1, data_55T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_55T_avg.exposureTime + bestfit1(2);
scatter(data_55T_avg.exposureTime, data_55T_avg.bMeanNorm, 'b', 'DisplayName', 'b55')
plot(data_55T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'b55')
theString = sprintf('55: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);


% Plot a single ISOSpeed - 99
bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.rMeanNorm, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.rMeanNorm, 'r', 'DisplayName', 'r99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'r99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.gMeanNorm, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.gMeanNorm, 'g', 'DisplayName', 'g99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'g99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

bestfit1 = polyfit(data_99T_avg.exposureTime, data_99T_avg.bMeanNorm, 1);
orig1 = polyval(bestfit1, data_99T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 60e-3]);
disp_pr_s = bestfit1(1)*data_99T_avg.exposureTime + bestfit1(2);
scatter(data_99T_avg.exposureTime, data_99T_avg.bMeanNorm, 'b', 'DisplayName', 'b99')
plot(data_99T_avg.exposureTime, orig1, '--r', [0 60e-3], xtnd1, '--r', 'DisplayName', 'b99')
theString = sprintf('99: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(30e-3, 275, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 198
bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.rMeanNorm, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.rMeanNorm, 'r', 'DisplayName', 'r198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', 'r198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.gMeanNorm, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.gMeanNorm, 'g', 'DisplayName', 'g198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', 'g198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

bestfit1 = polyfit(data_198T_avg.exposureTime, data_198T_avg.bMeanNorm, 1);
orig1 = polyval(bestfit1, data_198T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 20e-3]);
disp_pr_s = bestfit1(1)*data_198T_avg.exposureTime + bestfit1(2);
scatter(data_198T_avg.exposureTime, data_198T_avg.bMeanNorm, 'b', 'DisplayName', 'b198')
plot(data_198T_avg.exposureTime, orig1, '--g', [0 20e-3], xtnd1, '--g', 'DisplayName', 'b198')
theString = sprintf('198: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(20e-3, 350, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 299
bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.rMeanNorm, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.rMeanNorm, 'b', 'DisplayName', 'r299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', 'r299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.gMeanNorm, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.gMeanNorm, 'g', 'DisplayName', 'g299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', 'g299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

bestfit1 = polyfit(data_299T_avg.exposureTime, data_299T_avg.bMeanNorm, 1);
orig1 = polyval(bestfit1, data_299T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 15e-3]);
disp_pr_s = bestfit1(1)*data_299T_avg.exposureTime + bestfit1(2);
scatter(data_299T_avg.exposureTime, data_299T_avg.bMeanNorm, 'b', 'DisplayName', 'b299')
plot(data_299T_avg.exposureTime, orig1, '--b', [0 15e-3], xtnd1, '--b', 'DisplayName', 'b299')
theString = sprintf('299: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(10e-3, 300, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 395
bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.rMeanNorm, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.rMeanNorm, 'r', 'DisplayName', 'r395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', 'r395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.gMeanNorm, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.gMeanNorm, 'c', 'DisplayName', 'g395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', 'g395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

bestfit1 = polyfit(data_395T_avg.exposureTime, data_395T_avg.bMeanNorm, 1);
orig1 = polyval(bestfit1, data_395T_avg.exposureTime);
xtnd1 = polyval(bestfit1, [0 10e-3]);
disp_pr_s = bestfit1(1)*data_395T_avg.exposureTime + bestfit1(2);
scatter(data_395T_avg.exposureTime, data_395T_avg.bMeanNorm, 'b', 'DisplayName', 'b395')
plot(data_395T_avg.exposureTime, orig1, '--c', [0 10e-3], xtnd1, '--c', 'DisplayName', 'b395')
theString = sprintf('395: y = %.3f x + %.3f', bestfit1(1), bestfit1(2));
text(6e-3, 240, theString, 'FontSize', 12);

% Plot a single ISOSpeed - 798
bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.rMeanNorm, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.rMeanNorm, 'r', 'DisplayName', 'r798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', 'r798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);

bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.gMeanNorm, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.gMeanNorm, 'g', 'DisplayName', 'g798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', 'g798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);

bestfit2 = polyfit(data_798T_avg.exposureTime, data_798T_avg.bMeanNorm, 1);
orig2 = polyval(bestfit2, data_798T_avg.exposureTime);
xtnd2 = polyval(bestfit2, [0 5e-3]);
disp_pr_s = bestfit2(1)*data_798T_avg.exposureTime + bestfit2(2);
scatter(data_798T_avg.exposureTime, data_798T_avg.bMeanNorm, 'm', 'DisplayName', 'b798')
plot(data_798T_avg.exposureTime, orig2,'--m', [0 5e-3], xtnd2, '--m', 'DisplayName', 'b798')
%plot(data_798T_avg.exposureTime, xtnd2, '--m', 'DisplayName', '798')
theString = sprintf('798: y = %.3f x + %.3f', bestfit2(1), bestfit2(2));
text(3.5e-3, 220, theString, 'FontSize', 12);

title('DN vs. Exposure Time (s)')
xlabel('Exposure Time (s)')
ylabel('Digital Number (16-bit FS)')
legend


hold off