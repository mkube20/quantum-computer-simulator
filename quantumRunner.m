%Author: Michael Kuban

%Use this script to test your hand calculations for activity 2

%This is a less structured use of the quantum simulator. It asks for
%number of qbits, their coefficients, number of gates for each qbit,
%and then the gates themselves.

%Prints to screen input state, quantum gates used for each qbit, and final
%state. Also creates histogram of probabilities for final state.

clear
clc

%qbit input
num=input("How many qbits? ");
qbits=getQbits(num);

%form initial state
initState=initializeRegisters(qbits);

%form quantum algorithm from gate input
algorithm=getAlgorithm(num);

%run simulator
[finalState,probabilities]=quantumComputer(algorithm,1:1:num,initState);

%outputs
fprintf("\n\nInitial State:\n");
disp(initState);
fprintf("Quantum Gate(s):\n");
disp(algorithm);
fprintf("\nFinal State:\n");
disp(finalState);