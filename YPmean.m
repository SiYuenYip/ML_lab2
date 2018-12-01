function [ u,sigma ] = YPmean( X)

%极大似然估计估算出样本均值跟协方差矩阵，分别用u和sigma来表示
%   此处显示详细说明
%X:输入矩阵
%sigma 协方差矩阵的有偏估计
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
sigma=sigma/n;
end

