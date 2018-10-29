clear all
close all
clc

n=0.1:0.1:100;
T=gamma(n+1);
S=sqrt(2*pi*n).*(n/exp(1)).^n;
M1=S.*exp(1/12./n);
M2 = S.*exp(1/12./n - 1/360./n.^3 + 1/1260./n.^5);
R = S.*(1 + 1/2./n + 1/8./n.^2).^(1/6);

dS=(S-T)./T;
dM1=(M1-T)./T;
dM2=(M2-T)./T;
dR = (R-T)./T;

plot(n,dM1,'k','linewidth',2)
hold on
plot(n,dM2,'k','linewidth',2)
plot(n,dR,'k','linewidth',2)
fs = 14; sf = 12
set(gca,'linewidth',2,'fontsize',sf)
axis([0,100,-0.00000005,0.00000005])
%text('Interpreter','latex','String','$$\frac{\mbox{error}}{n!}$$','Position',[-8,0.0],'FontSize',fs)
%text('Interpreter','latex','String','$$n$$','Position',[49.4,-0.000000057],'FontSize',fs)
%text('Interpreter','latex','String','Relative Accuracy of These Approximations to $$n!$$','Position',[10,0.000000054],'FontSize',fs)
text('Interpreter','latex','String','$$\sqrt{2\pi \, n \,} \, \left( n/e \right)^{\,\, n} \exp\left( 1/12 n - 1/360 n^3 + 1/1260 n^5 \right)$$','Position',[7,0.000000004],'FontSize',sf)
text('Interpreter','latex','String','$$\sqrt{2\pi \, n \,} \, \left( n/e \right)^{\,\, n} \exp\left( 1/12 n \right)$$','Position',[47,0.00000003],'FontSize',sf)
text('Interpreter','latex','String','$$\sqrt{2\pi \, n \,} \, \left( n/e \right)^{\,\, n} \left( 1 + 1/2 n + 1/8 n^2 \right)^{\quad 1/6}$$','Position',[29,-0.00000003],'FontSize',sf)
textt='Relative Accuracy of Mermin and Ramanujan Estimates of $n!$'
%title(textt,'Interpreter','latex','FontSize',fs)
textx='$n$'
xlabel(textx,'Interpreter','latex','FontSize',fs)
texty='$10^8 ( E(n!) - n! )/n!$'
ylabel(texty,'Interpreter','latex','FontSize',fs)
set(gca,'xtick',[0:10:100])
%h=legend('Mermin_1','Mermin_2','Ramanujan')
%ounits=get(gcf,'Units');
%set(gcf,'Units','normalized','OuterPosition',[0 0 1 1],'Units',ounits)
%orient landscape
print -dpdf Accuracy
print -deps Accuracy
print -deps ../Accuracy
print -deps /Users/kevin/papers/math/Accuracy