%Author: Michael Kuban
%This function creates a quantum algorithm for use in the simulator.
%Input: integer number of qbits
%Output: quantum algorithm as a string array 

function algorithm = getAlgorithm(num)    
steps=input("How many operations would you like to preform to each qbit?");
algorithm="";
for i=1:num
    fprintf("Input quantum algorithm as a series of operators for qbit %i:\n",i);
    for j=1:steps
        test=input("",'s');
        algorithm(i,j)=test;
    end
end
end

