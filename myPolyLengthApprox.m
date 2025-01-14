function length = myPolyLengthApprox(xmin, xmax, e)
%[length] = myPolyLengthApprox(xmin,xmax,e)
%Approximates the length of a curved line
% from x starting at "xmin" and going to "xmax".
%This function keeps approximating the curve length
%until it is within an estimated error "e".
%All inputs and outputs are doubles

current = myPolyLengthApproxN(xmin,xmax,2);
prev = 0;
difference = current-prev;
i = 3;

while (difference > e)
    prev = current;
    current = myPolyLengthApproxN(xmin,xmax,i);
    difference = abs(current - prev);
    i = i+1;
end

length = current;

end


%Byron Wong
%NetID: bw540
%RUID: 232001450