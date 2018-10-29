clear all
close all
clc
Vc0out;
Vc1out;
Vc2out;
Vc6out;
Vl0out;
Vl1out;
Vl2out;
Vl6out;
Vw0out;
Vw1out;
Vw2out;
Vw6out;
x1 = -5.0;
x2 = 0.0;
y = 0.0:0.0001:0.035;
plot(Vc0(:,1),Vc0(:,2),'k','linewidth',2)
hold on
plot(Vc1(:,1),Vc1(:,2),'k','linewidth',2)
plot(Vc2(:,1),Vc2(:,2),'k','linewidth',2)
plot(Vc6(:,1),Vc6(:,2),'k','linewidth',2)
plot(Vl0(:,1),Vl0(:,2),'k','linewidth',2)
plot(Vl1(:,1),Vl1(:,2),'k','linewidth',2)
plot(Vl2(:,1),Vl2(:,2),'k','linewidth',2)
plot(Vl6(:,1),Vl6(:,2),'k','linewidth',2)
plot(Vw0(:,1),Vw0(:,2),'k','linewidth',2)
plot(Vw1(:,1),Vw1(:,2),'k','linewidth',2)
plot(Vw2(:,1),Vw2(:,2),'k','linewidth',2)
plot(Vw6(:,1),Vw6(:,2),'k','linewidth',2)
plot(x1,y,'k-','linewidth',1)
plot(x2,y,'k-','linewidth',1)
fs = 14;
textx = 'Height $z$ (nm) above lipid bilayer'
xlabel(textx,'Interpreter','latex','fontsize',fs)
texty='Electric potential $V(\rho,z)$ (V)'
ylabel(texty,'Interpreter','latex','fontsize',fs)
textt='Potential due to a Charge near a Lipid Slab'
%title(textt,'Interpreter','latex','fontsize',fs)
print -dpdf Vhbw
print -dpdf ../Vhbw
print -depsc Vhbw
print -depsc ../Vhbw
print -deps /Users/kevin/papers/math/Vhbw