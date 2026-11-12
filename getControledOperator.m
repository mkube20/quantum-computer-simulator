%Author: Martin V.
%Edited by: Michael Kuban 1.1

%1.1 Edits: added checks for non existent inputs and set default values

%original documentation below:

%The code returns matrix for single q-bit operator controlled by another
%q-bit.
%
%opName - name of quantum gate
%l - number of bits between target and controlled q-bit excluding these q-bits
%For example:
%q0: --------.--------- control bit
%q1: ------------------
%q2: ------------------
%q3: --------X--------- target bit
%In this case l = 2
%lambda, phi, theta - gate parameters

function op = getControledOperator(opName, l, theta, phi, lambda)
 if ~exist('theta','var')
     % third parameter does not exist, so default it to something
      theta = 0;
 end
 if ~exist('phi','var')
     % third parameter does not exist, so default it to something
      phi = 0;
 end
 if ~exist('lambda','var')
     % third parameter does not exist, so default it to something
      lambda = 0;
 end
    baseOp = getOperator(opName, theta, phi, lambda);    
    N = 2^(l+2);    
    op = [eye(N/2) zeros(N/2); zeros(N/2) kron(eye(N/4), baseOp)];    
end