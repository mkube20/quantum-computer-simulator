%Author: Michael Kuban
%Serves as an identity single bit operator for activity 1

function [finalState,probabilities] = identity(in1)
if in1(2)==1
    [finalState,probabilities]=quantumComputer(["I";"I"],1:1:2,in1); 
else
[finalState,probabilities]=quantumComputer([".";"X"],1:1:2,in1);
end