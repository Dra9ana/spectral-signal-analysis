function ret = Pper(x,f)
N = length(x);
% -2*1i * pi * (0:(N-1)) > 0 1 ... N-1
% .* f' -> 0 1 .. N-1 .* f[0] .. f[M] '
% 0*f[0] 1*f[0] ... (N-1)*f[0]
% ...
% 0*f[M-1] 1*f[M-1] ... (N-1)*f[M-1]
% '
% 0*f[0] 0*f[1] ... 0*f[M-1]
% ...
% (N-1)*f[0] ... (N-1)*f[M-1]
% x*
% 

ret = (1 / N ) * ((abs( x * exp( (-2)*(1i) * pi * (0:(N-1)) .* f.' ).' )).^2);
end