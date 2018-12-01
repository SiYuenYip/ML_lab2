function result = matrixOutput( x )
%MATRIXOUTPUT 此处显示有关此函数的摘要
%   此处显示详细说明
%function：用来打印矩阵
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

