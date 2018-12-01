clear;clc;
load sample.mat

table=patterns(:,targets==2);
[u1,sigma1]=YPmean(table);
fprintf('该类型的均值向量为：');
matrixOutput(u1);
fprintf('该类型的协方差矩阵为：');
matrixOutput(sigma1);
[u2,sigma2]=meanFun(table);
fprintf('该类型的无偏估计的协方差矩阵为：');
matrixOutput(sigma2);
n=size(table,2);
for i=1:size(table,1)
    x{i}=table(i,:);
    %fprintf('X(%d)的u为：%f\t\tsigma：\t%f\n',i,mean(x{i}),cov(x{i}'));
    u{i}=sum(x{i})/n;
    sigma{i}=(sum((x{i}-u{i}).*(x{i}-u{i})))/n;
    fprintf('...X(%d)的均值u为：%f\t\t方差为：\t%f\n',i,u{i},sigma{i});
end
SC=diag([sigma{1} sigma{2} sigma{3}]);
fprintf('假设该高斯模型可分离：');
matrixOutput(SC);