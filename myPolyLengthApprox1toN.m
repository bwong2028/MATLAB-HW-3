function vector = myPolyLengthApprox1toN(xmin, xmax, nmax)
%[vector] = myPolyLengthApproxN (xmin, xmax, nmax)
% this function  calculates the approximate length of a curve
% given by the interval [xmin, xmax] repeatedly using 1 to nmax segments
% it puts all of these different values into a vector that is returned
% all inputs and outputs are doubles

vector = [];
for i = 1:nmax
    x = myPolyLengthApproxN(xmin, xmax, i);
    vector = [vector, x];
end

end

%Byron Wong
%NetID: bw540
%RUID: 232001450