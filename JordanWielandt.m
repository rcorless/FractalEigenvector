function JW = JordanWielandt(n)
M = -spmandel(n);
%for i=1:2^n-1
%  M(i,i)=0;
%end
d = 2^n-1;
JW = sparse(2*d,2*d);
JW(d+1:2*d,1:d) = M';
JW(1:d, d+1:2*d) = M;
G = digraph(JW);
figure(n)
clf
p = plot(G,'Layout','force');
p.MarkerSize=2^((5-n)/2);
p.NodeLabel = {};
p.NodeColor = [0 0 0];
p.EdgeColor = [0 0 0];
p.ArrowSize=0;
axis('square')
end