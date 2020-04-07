%%
Hf=tf(3.5,[0.5 1 0]);
Hr=0.27;
H0=feedback(Hr*Hf,1);
bode(Hr*Hf)

%performante impuse
estp=0;
sigma=0.15; %<
tr=15; %<
cv=1; %>
wb=15; %<
%%
%b)
Hrpi=tf(3*[11.62 1],[25 1]);
Hf=tf(3.5,[0.5 1 0]);
H0=feedback(Hf*Hrpi,1);
bode(Hrpi*Hf)
t=0:0.1:30;
lsim(H0,t,t) %verificare cv

%% Lab6 a)
Hrpd=tf(0.38*[0.5 1],[0.35 1]);
Hf=tf(3.5,[0.5 1 0]);
H0=feedback(Hf*Hrpd,1);
bode(Hrpd*Hf)
t=0:0.1:30;
lsim(H0,t,t)

%% Lab 6 b)
Hrpd=tf(2.31*[0.5 1],[0.05 1])
Hf=tf(3.5,[0.5 1 0]);
H0=feedback(Hf*Hrpd,1);
bode(H0)
t=0:0.1:30;
lsim(H0,t,t)
step(H0)