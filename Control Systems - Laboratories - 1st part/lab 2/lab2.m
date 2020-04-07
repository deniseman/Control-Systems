%%
%ex 1
suprareglaj=exp(-pi*0.75/sqrt(1-0.75^2));

tp=pi/(10*sqrt(1-0.75^2));

ts=4/7.5;

H=tf([100],[1 15 100]);
step(H)
%%
%ex 2
H=tf([2],[10 3]);
step(H)
%%
%ex 3 a)
Hf=tf(1,[2 1]);
Hr=2;
Hdes=series(Hf,Hr);
H0=feedback(Hdes,1);

t=0:0.1:10;

figure('name','raspunsuri pt H0');
subplot(3,1,1)
step(H0,t);

subplot(3,1,2)
lsim(H0,t,t)

subplot(3,1,3)
lsim(H0,t.*t,t)

figure('name','bode');
subplot(2,1,1)
bode(Hdes)

subplot(2,1,2)
bode(H0)

%%
%ex 3 b)
Hf=tf(1,[2 1]);
Hr=tf(2,[1 0]);
Hdes=series(Hf,Hr);
H0=feedback(Hdes,1);

t=0:0.1:10;

figure('name','raspunsuri pt H0');
subplot(3,1,1)
step(H0,t);

subplot(3,1,2)
lsim(H0,t,t)

subplot(3,1,3)
lsim(H0,t.*t,t)

figure('name','bode');
subplot(2,1,1)
bode(Hdes)

subplot(2,1,2)
bode(H0)

%%
%ex 3 c)
Hf=tf(1,[2 1]);
Hr=tf(10,[1 0]);
Hdes=series(Hf,Hr);
H0=feedback(Hdes,1);

t=0:0.1:10;

figure('name','raspunsuri pt H0');
subplot(3,1,1)
step(H0,t);

subplot(3,1,2)
lsim(H0,t,t)

subplot(3,1,3)
lsim(H0,t.*t,t)

figure('name','bode');
subplot(2,1,1)
bode(Hdes)

subplot(2,1,2)
bode(H0)

%%
%ex 3 d)
Hf=tf(1,[2 1]);
Hr=tf(2,[1 0 0]);
Hdes=series(Hf,Hr);
H0=feedback(Hdes,1);

t=0:0.1:10;

figure('name','raspunsuri pt H0');
subplot(3,1,1)
step(H0,t);

subplot(3,1,2)
lsim(H0,t,t)

subplot(3,1,3)
lsim(H0,t.*t,t)

figure('name','bode');
subplot(2,1,1)
bode(Hdes)

subplot(2,1,2)
bode(H0)






