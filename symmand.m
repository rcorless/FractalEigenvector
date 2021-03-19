function S = symmand(n)
 if n==1
   S = sparse(1);
 else
   d = 2^n-1;
   S = sparse(d,d);
   S0 = symmand(n-1);
   S(1,1) = 1;
   d0 = 2^(n-1)-1;
   S(1:d0,d0+2:d) = S0;
   S(d0+2:d,1:d0) = S0;
   S(d0+1,d0+2) = 1;
   S(d0+2,d0+1) = 1;
 end
end