%a)
Hf=tf([2.5],[1 3.2 0]);

%cerinte
estv=0.2;
tr=1;
sigma=0.15;
% cv=5;
% wb=2;

%rezolvare
zeta=-log(sigma)/sqrt(pi^2+(log(sigma))^2)
wn=4/(tr*zeta);
w=wn*sqrt(1-zeta^2)
wn=2*zeta/estv
ref=3/(sqrt(1-zeta^2))
H0=tf(wn^2, [1 2*zeta*wn wn^2]);

% Hc=1/Hf*H0/(1-H0);
% Hc=minreal(Hc)
% 
% H0n=feedback(series(Hc,Hf),1);
% subplot(2,1,1)
% step(H0n)
% t=0:0.1:50;
% subplot(2,1,2)
% lsim(H0n,t,t)
% 
% figure
% bode(H0n)
