% ECOR2606 - David Manouchehri

function[ overlap ] = overlap(R1, R2, D)
% overlap   Given a
% Inputs:   R1 = 
%           R2 =
%       	D  =
% Outputs:  overlap

% circcirc

A = @(x, R) pi * R^2 / 2 - (x * sqrt(R^2 - x^2) + R^2 * arcsin(x / R))

% Do stuff here.

end