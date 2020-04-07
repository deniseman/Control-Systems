%a)
Hf=tf([2],[2 1 0]);

%cerinte
estp=0;
tr=30;
sigma=0.15;
cv=0.2;
wb=2;

%rezolvare
zeta=-log(sigma)/sqrt(pi^2+(log(sigma))^2);
wn=4/(tr*zeta);
cv=wn/(2*zeta);
estv=1/cv;
wb=wn*sqrt(1-2*zeta^2+sqrt(2-4*zeta^2+4*zeta^4));
H0=tf(wn^2, [1 2*zeta*wn wn^2]);

Hc=1/Hf*H0/(1-H0);
Hc=minreal(Hc)

H0n=feedback(series(Hc,Hf),1);
subplot(2,1,1)
step(H0n)
t=0:0.1:50;
subplot(2,1,2)
lsim(H0n,t,t)

figure
bode(H0n)
