%Author: Michael Kuban
%This function gets qbits from the user and puts them into a cell array
%containing the qbits in bracket notation.
%Input: integer number of qbits
%Output: cell array of qbits

function out = getQbits(num)
out=cell(num,1);
mat=zeros(num,2);
count=1;
for i=1:num
    fprintf("Input coefficient of |0> for qbit %i:", count);
    mat(i,1)=input('');
    fprintf("Input coefficient of |1> for qbit %i:", count);
    mat(i,2)=input('');
    count=count+1;
end
for i=1:num
    out{i}=mat(i,:);
end
end

