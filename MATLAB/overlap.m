% ECOR2606 - David Manouchehri

function[ overlap ] = overlap(R1, R2, D)
% overlap   Given a
% Inputs:   R1 = 
%           R2 =
%       	D  =
% Outputs:  overlap

% circcirc

A = @(x, R) pi * R^2 / 2 - (x * sqrt(R^2 - x^2) + R^2 * asin(x / R));

x1 = (D^2 + R1^2 - R2^2)/(2*D);
x2 = (D - x1);

if(min(R1, R2) > D)    
    % They overlap
    overlap = A(D, R1) + A(D, R2);
else
    error;
    % They don't overlap
end

% Do stuff here.

end