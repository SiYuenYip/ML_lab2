clear;clc;
load sample.mat

table=patterns(:,targets==1);
ways=[1 2;2 3;1 3];

num=size(ways,1);
for i=1:num
    X{i}=table(ways(i,:),:);
    %u{i}=mean(X{i},2);
    %sigma{i}=cov(X{i}');
    [u{i},sigma{i}]=YPmean(X{i});
    fprintf('X(%d)��X(%d)�ľ�ֵΪ��',ways(i,1),ways(i,2));
    matrixOutput(u{i});
    fprintf('X(%d)��X(%d)��Э�������Ϊ��',ways(i,1),ways(i,2));
    matrixOutput(sigma{i});
    fprintf('\n');
end
