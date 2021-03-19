function [p,dp]=mandelpoly(z,k)
% MANDELPOLY evaluates the k^th Mandelbrot polynomial and its
% derivative at one or more points. 
% The k^th polynomial has degree 2^(k-1)-1
    
% Author PWL 2014.4.28 Modified RMC 2020.2.27
    dp = zeros(size(z));
    p  = zeros(size(z));
    for i=1:k-1
        dp = p.^2+2*z.*p.*dp;
        p  = z.*p.^2+1;
    end
