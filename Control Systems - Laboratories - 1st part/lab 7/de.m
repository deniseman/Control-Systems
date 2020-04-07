%% 1)

Hf=tf(2,[1 1]);
%met modulului:
Hr=tf([1],[4 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
%met simetriei:
Hr=tf([4 1],[16 0 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)

%% 2)

Hf=tf(2,[1 1 0]);
%met modulului
Hr=1/4;
H0=feedback(series(Hr*Hf),1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
%met simetriei:
Hr=tf([4 1],[16 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)

%% 3)

Hf=tf(2,conv([1 1],[10 1]));
%met modulului
Hr=tf([10 1],[4 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
%met simetriei:
Hr=tf([40 14 1],[16 0 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)

%% 4)

Hf=tf(2,[10 11 1 0]);
%met modulului
Hr=tf([10 1],4);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
%met simetriei:
Hr=tf([40 14 1],[16 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)

%% 5)

Hf=tf(2,[200 230 31 1]);
%met modulului
Hr=tf([200 30 1],[4 1]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
%met simetriei:
Hr=tf([800 320 34 1],[16 0 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)

%% 6)

Hf=tf(2,[200 230 31 1 0]);
%met modulului
Hr=tf([200 30 1],4);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
%met simetriei:
Hr=tf([800 320 34 1],[16 0]);
H0=feedback(Hr*Hf,1);
step(H0)
t=0:0.1:25;
figure
lsim(H0,t,t)
