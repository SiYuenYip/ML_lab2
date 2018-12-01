clear;clc;
load sample.mat

table=patterns(:,targets==2);
[u1,sigma1]=YPmean(table);
fprintf('�����͵ľ�ֵ����Ϊ��');
matrixOutput(u1);
fprintf('�����͵�Э�������Ϊ��');
matrixOutput(sigma1);
[u2,sigma2]=meanFun(table);
fprintf('�����͵���ƫ���Ƶ�Э�������Ϊ��');
matrixOutput(sigma2);
n=size(table,2);
for i=1:size(table,1)
    x{i}=table(i,:);
    %fprintf('X(%d)��uΪ��%f\t\tsigma��\t%f\n',i,mean(x{i}),cov(x{i}'));
    u{i}=sum(x{i})/n;
    sigma{i}=(sum((x{i}-u{i}).*(x{i}-u{i})))/n;
    fprintf('...X(%d)�ľ�ֵuΪ��%f\t\t����Ϊ��\t%f\n',i,u{i},sigma{i});
end
SC=diag([sigma{1} sigma{2} sigma{3}]);
fprintf('����ø�˹ģ�Ϳɷ��룺');
matrixOutput(SC);