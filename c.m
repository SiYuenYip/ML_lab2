clear;clc;
load sample.mat

table=patterns(:,targets==1);

X=table(:,:);
[u,sigma]=YPmean(X);
[u1,sigma1]=meanFun(X);
fprintf('��ֵΪ��');
matrixOutput(u);
fprintf('Э�������Ϊ');
matrixOutput(sigma);
fprintf('��ƫ�����µ�Э�������Ϊ');
matrixOutput(sigma1);