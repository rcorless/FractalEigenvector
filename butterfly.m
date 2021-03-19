function butterfly(n)
M = spmandel(n);
%for i=1:2^n-1
%  M(i,i)=0;
%end
G = digraph(M);
figure(n)
p = plot(G,'Layout','force');
p.MarkerSize=10;
p.LineWidth=1.5;
p.NodeFontSize=18;
%p.NodeLabel = {};
p.NodeColor = [0 0 0];
p.EdgeColor = [0 0 0];
p.ArrowSize=20;
axis('square')
end