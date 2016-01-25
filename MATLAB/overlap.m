% ECOR2606 - David Manouchehri

function[ area ] = overlap(R1, R2, D)
% overlap   Given a
% Inputs:   R1 = 
%           R2 =
%       	D  =
% Outputs:  area

% circcirc

if(min(R1, R2) > D)    
    % They overlap
    A = @(x, R) pi .* R.^2 / 2 - (x .* sqrt(R.^2 - x.^2) + R.^2 .* asin(x ./ R));

    x1 = (D^2 + R1^2 - R2^2)/(2*D);
    x2 = (D - x1);
    area = A(x1, R1) + A(x2, R2);
else
    error('Circles do not overlap!');
    % They don't overlap
end

% Do stuff here.

end