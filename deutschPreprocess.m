%Author: Michael Kuban
%Sends input state of qbits through preprocessor quantum gates according
%to the Deustch Algorithm

function [out] = deutschPreprocess(in)
[finalState,~]=quantumComputer(["X","H";"X","H"],1:1:2,in);
close all;
out=finalState;
end