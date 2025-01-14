function length = myPolyLengthApproxN (xmin, xmax, n)
%[length] = myPolyLengthApproxN (xmin, xmax, n)
% this function  calculates the approximate length of a curve
% given by the interval [xmin, xmax] using n segments
% all inputs and outputs are doubles

dx = (xmax-xmin)/n;
length = 0;

for i = 1:n
    x_i = xmin + i * dx;
    x_i_minus_1 = xmin + (i - 1) * dx;

    deltaX = dx;
    deltaY = myPoly(x_i) - myPoly(x_i_minus_1);
    
    length = length + sqrt(deltaX^2 + deltaY^2);
    
end

end


%Byron Wong
%NetID: bw540
%RUID: 232001450