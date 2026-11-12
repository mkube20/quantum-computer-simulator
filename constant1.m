%Author: Michael Kuban
%Serves as a constant 1 single bit operator for activity 1

function [finalState,probabilities] = constant1(in1)
if in1(2)==1
    [finalState,probabilities]=quantumComputer(["I";"I"],1:1:2,in1);
else
[finalState,probabilities]=quantumComputer(["I";"X"],1:1:2,in1);
end