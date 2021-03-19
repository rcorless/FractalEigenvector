function M=spmandel(k)
% function M = spmandel(k)
%
% spmandel comstructs a (2^k-1)x(2^k-1) sparse mandelbrot matrix for a
% given k
%
    
% Copyright 2011, Piers Lawrence. see LICENSE for licensing details
    

    n=2^k-1;
 
    % e holds the entries in the nonzero subdiagonal, diagonal and
    % superdiagonal parts of M
    e=zeros(n,k+1);
    e(1:n-1,1)=-1;
    % d gives which (sub,super)diagonal entry they are in.
    d=zeros(k+1,1);
    d(1)=-1;
    for j=1:k
        st=2^j;
        e(2^(j)-1:st:n,j+1)=-1;
        d(j+1)=2^(j)-2;
    end
    % Construct matrix
    M=spdiags(e,d,n,n);

    
