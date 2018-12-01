clear;clc;
load sample.mat

table=patterns(:,targets==1);

X=table(:,:);
[u,sigma]=YPmean(X);
[u1,sigma1]=meanFun(X);
fprintf('均值为：');
matrixOutput(u);
fprintf('协方差矩阵为');
matrixOutput(sigma);
fprintf('无偏估计下的协方差矩阵为');
matrixOutput(sigma1);