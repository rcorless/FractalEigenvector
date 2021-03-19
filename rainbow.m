function rainbow(n)
M = symmand(n);
Red = [255 0 0];
Red = Red/255;
Orange = [255 127 0];
Orange = Orange/255;
Yellow = [255 255 0];
Yellow = Yellow/255;
Indigo = [46 43 95]/255;
Violet = [139 0 255]/255;
figure(1)
clf
s = eig(full(M));
s = sort(abs(s),'descend');
%semilogx(s, '.', 'Color',Violet)
d = 2^n-1;
plot( log(1:d)/log(2), s, '.', 'Color',Violet)
hold on
M = symmand(n+1);
s = eig(full(M));
s = sort(abs(s),'descend');
%semilogx(s, '.', 'Color',Indigo)
d = 2^(n+1)-1;
plot( log(1:d)/log(2), s, '.', 'Color',Indigo)
M = symmand(n+2);
s = eig(full(M));
s = sort(abs(s),'descend');
%semilogx(s, '.', 'Color','blue')
d = 2^(n+2)-1;
plot( log(1:d)/log(2), s, '.', 'Color','blue')
M = symmand(n+3);
s = eig(full(M));
s = sort(abs(s),'descend');
% Green
%semilogx(s, '.', 'Color','green')
d = 2^(n+3)-1;
plot( log(1:d)/log(2), s, '.', 'Color','green')
M = symmand(n+4);
s = eig(full(M));
s = sort(abs(s),'descend');
%semilogx(s, '.', 'Color',Yellow)
d = 2^(n+4)-1;
plot( log(1:d)/log(2), s, '.', 'Color',Yellow)
M = symmand(n+5);
s = eig(full(M));
s = sort(abs(s),'descend');
%semilogx(s, '.', 'Color',Orange);
d = 2^(n+5)-1;
plot( log(1:d)/log(2), s, '.', 'Color',Orange)
M = symmand(n+6);
s = eig(full(M));
s = sort(abs(s),'descend');
%semilogx(s, '.', 'Color',Red)
d = 2^(n+6)-1;
plot( log(1:d)/log(2), s, '.', 'Color',Red)
xlabel('log_2\it n','FontSize',18)
ylabel('\sigma_{\it n, k}', 'FontSize', 18 )
ax = gca;
ax.FontSize=12;
end