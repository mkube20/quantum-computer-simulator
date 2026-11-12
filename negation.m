%Author: Michael Kuban
%Serves as a negation single bit operator for activity 1

function [finalState,probabilities] = negation(in1)
if in1(2)==1
  [finalState,probabilities]=quantumComputer(["I";"X"],1:1:2,in1);  
else
[finalState,probabilities]=quantumComputer([".","I";"X","X"],1:1:2,in1);
end