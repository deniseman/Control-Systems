close all

figure('name', 'ex3')
Hf1=tf([1],[1 0]);
Hf2=tf([1],[1 2]);
Hr=1;

Hw0=feedback(series(Hf1,series(Hf2,Hr)),1);
Hp10=-feedback(series(Hf1,Hf2),Hr);
Hp20=-feedback(Hf2,series(Hr,Hf1));

t=0:0.1:12;
yw=step(Hw0,t);
yp1=step(Hp10,t);
yp2=step(Hp20,t);
yt=yw+yp1+yp2;

plot(t,yt)