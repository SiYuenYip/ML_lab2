function [ u,sigma ] = meanFun( X)
%MEANFUN 此处显示有关此函数的摘要
%极大似然估计估算出样本均值跟协方差矩阵，分别用u和sigma来表示
%   此处显示详细说明
%sigma 协方差矩阵的无偏估计
%u：多元高斯分布的均值
[m,n]=size(X);
u=0;
sigma=0;
for i=1:n
    x{i}=X(:,i);
    u=u+x{i};
end
u=(u/n);
for i=1:n
    sigma=sigma+(x{i}-u)*(x{i}-u)';
end
sigma=sigma/(n-1);
end

