clear;clc;
load sample.mat
%��д���򣬶Ա���е���W1�е�3������Xi���ֱ���������Ȼ����u`��sigma~^2

table=patterns(:,targets==1);
%u=mean(table,2);
%sigma=cov(table');
n=size(table,2);
for i=1:size(table,1)
    X{i}=table(i,:);
    u{i}=sum(table(i,:))/n;
    sigma{i}=(sum((table(i,:)-u{i}).*(table(i,:)-u{i})))/n;
    %[u{i},sigma{i}]=YPmean(X{i});
    fprintf('X(%d)��uΪ��%f\t\tsigma��\t%f\n',i,u{i},sigma{i});
end

