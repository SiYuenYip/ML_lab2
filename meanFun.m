function [ u,sigma ] = meanFun( X)
%MEANFUN �˴���ʾ�йش˺�����ժҪ
%������Ȼ���ƹ����������ֵ��Э������󣬷ֱ���u��sigma����ʾ
%   �˴���ʾ��ϸ˵��
%sigma Э����������ƫ����
%u����Ԫ��˹�ֲ��ľ�ֵ
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

