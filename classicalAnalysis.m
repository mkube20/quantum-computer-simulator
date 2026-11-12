%Author: Michael Kuban

%Use this for the first part of activity 1

clear
clc

%bit input
num=2;
while ~(num==0||num==1)
    num=input("Enter state of input bit (0 or 1): ");
    if num==0
        bit=[1,0];
    elseif num==1
            bit=[0,1];
    else
        fprintf("Bit value must be 0 or 1. Try again.\n\n");
    end
end

%form initial state
initState=initializeRegisters({[1,0];bit});

%This is the line where you can change 'blackBox' to test the other known
%operations.
%Change 'blackBox' to 'identity', 'negation', 'constant0', or 'constant1'
%for testing
%After testing, change back to 'blackBox' to determine your answer
[finalState,probabilities]=blackBox(initState);