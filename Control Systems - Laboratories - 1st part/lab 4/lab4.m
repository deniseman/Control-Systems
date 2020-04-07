Hf1=tf(2,[5 1 0]);

tr=4; %impus
cvi=2; %cv impus
sigma=0.04; %impus
%pc/zc=1.05; %impus

deltasigmac=0.02; %impus, al elementului de corectie
sigma2=sigma-deltasigmac; %suprareglajului structurii de ordin 2

zeta=-log(sigma2)/sqrt(pi^2+log(sigma2)^2);
wn=4/(zeta*tr);
cv2=wn/(2*zeta); %cv al elementului de ordin 2

pc=deltasigmac/(2*zeta/wn-1/cvi);
zc=pc/(1+deltasigmac);
%pc/zc; %verificare

H0c=tf(wn^2*pc*[1 zc],zc*conv([1 2*zeta*wn wn^2],[1 pc]));
Hr=minreal((1/Hf1)*(H0c/(1-H0c)));
zpk(Hr)
Hr=tf(4.1945*[1 0.2+0.02739],[1 2.017+0.01139]);
H01=feedback(Hr*Hf1,1);

Hf2=tf([2+0.4],[5 1 0]);
Hf3=tf([2],[6 1 0]);

H02=feedback(Hr*Hf2,1);
H03=feedback(Hr*Hf3,1);

subplot(2,1,1)
step(H01)
hold on
step(H02)
hold on
step(H03)
legend('1','2','3')

t=0:0.1:100;
subplot(2,1,2)
lsim(H01,t,t)
hold on
lsim(H02,t,t)
hold on
lsim(H03,t,t)
legend('1','2','3')

figure
bode(H01) %=>wb<=1.2
figure
bode(Hr*Hf1) %=>stabil
