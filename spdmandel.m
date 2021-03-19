function M=spdmandel(de,k)
% function M = spdmandel(d,k)
%
% spdmandel comstructs a (d^k-1)x(d^k-1) sparse mandelbrot matrix for a
% given k, relating to the iteration
%     p_{k+1}(z)=z*(p_{k-1})^d+1
%
    
% Copyright 2011, Piers Lawrence. see LICENSE for licensing details
    

    n=de^k-1;
 
    % e holds the entries in the nonzero subdiagonal, diagonal and
    % superdiagonal parts of M
    e=zeros(n,k+1);
    e(1:n-1,1)=-1;
    % d gives which (sub,super)diagonal entry they are in.
    d=zeros(k+1,1);
    d(1)=-1;
    for j=1:k
        st=de^j;
        e(de^(j)-1:st:n,j+1)=-1;
        d(j+1)=de^(j)-2;
    end
    % Construct matrix
    M=spdiags(e,d,n,n);

    
