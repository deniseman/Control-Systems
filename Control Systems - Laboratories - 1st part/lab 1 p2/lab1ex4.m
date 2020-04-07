close all

figure('name','treapta');
Hr=5;
Hf1=tf(1,[20 1]);
Hf2=tf(0.5,[1 0]);

Hw0=feedback(series(Hr,series(Hf1,Hf2)),1);
Hp10=feedback(Hf2,series(Hr,Hf1));
Hp20=-feedback(1,series(Hr,series(Hf1,Hf2)));

%raspunsul la treapt
t=0:0.1:50;
step(Hw0)

%rasp sistemului la rampa
figure('name','rampa');
lsim(Hw0,t,t)

figure('name','perturbatia1')
p1=0.2*ones(1,length(t));
yw=step(Hw0,t);
yp1=lsim(Hp10,p1,t);
yt1=yw+yp1;
plot(t,yt1)

figure('name','perturbatia2')
p2=0.1*ones(1,length(t));
yw=step(Hw0,t);
yp2=lsim(Hp20,p2,t);
yt2=yw+yp2;
plot(t,yt2)