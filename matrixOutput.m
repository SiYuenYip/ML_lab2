function result = matrixOutput( x )
%MATRIXOUTPUT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%function��������ӡ����
result=x;
[m,n]=size(x);
fprintf('\n');
for i=1:m 
    fprintf('[\t');
    for j=1:n
        fprintf('%f\t',x(i,j));
    end
    fprintf(']');
    fprintf('\n');
end
end

