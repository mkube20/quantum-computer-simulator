%Author: Michael Kuban
%Sends input state of qbits through postprocessor quantum gates according
%to the Deustch Algorithm

function [out1,out2] = deutschPostprocess(in)
close all;
[finalState,probabilities]=quantumComputer(["H";"H"],1:1:2,in);
out1=finalState;
out2=probabilities;
end