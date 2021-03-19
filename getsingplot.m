function [U,S,Vt] = getsingplot(n)
M = spmandel(n);
d = 2^n-1;
[U,S,Vt] = svds( M, 1 );
figure(1)
clf
semilogy( U/sign(U(1)), 'k.','MarkerSize', 8 )
axis( [0.5, 0.5+d, 0, 1] )
xlabel('\it k','FontSize',18 )
%xticks( [2.5e5, 5.0e5, 7.5e5, 10.0e5])
%xticklabels( {2.5e5, 5.0e5, 7.5e5, 10.0e5})
ylabel('components of \bf u','FontSize',18)
ax = gca;
ax.FontSize=12;
%figure(2)
%clf
%semilogy(Vt/sign(Vt(1)), 'k.','MarkerSize', 2^((12-n)/8) )
%axis( [0.5, 0.5+d, 0, 1 ] )
%xlabel('\it k')
%ylabel('components of \bf v')
end
