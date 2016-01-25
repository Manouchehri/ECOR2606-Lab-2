% ECOR2606 - David Manouchehri - Part 1

function[ area ] = overlap(R1, R2, D)
% overlap:  Given two circles and a distance, calculate the overlapping
%           area.
% Inputs:   R1 = Radius of first circle
%           R2 = Radius of second circle
%       	D  = distance between the two circles
% Outputs:  area = area of the overlap

% circcirc

if(R1 < 0)
    error('R1 is less than 0');
elseif(R2 < 0)
    error('R2 is less than 0');
elseif(D < 0)
    error('D is less than 0');
elseif(D < min(R1, R2))
    error('Circles do not overlap in a real axis!');
elseif(D >= R1 + R2) % No overlap, circles too far apart.
    area = 0;
else
    A = @(x, R) pi .* R.^2 / 2 - (x .* sqrt(R.^2 - x.^2) + R.^2 .* asin(x ./ R));
    x1 = (D^2 + R1^2 - R2^2)/(2*D);
    x2 = (D - x1);
    area = A(x1, R1) + A(x2, R2);
end

end
