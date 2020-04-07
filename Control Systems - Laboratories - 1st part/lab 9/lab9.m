%%1) a)
Hf=tf(2,[50 15 1],'iodelay',3);
%bode(Hf)
Hc=tf([1.08*28.57 1.08],[28.57 0]);
Hd=Hf*Hc;
bode(Hd)

%% b)
Hf=tf(2,[50 15 1],'iodelay',3);
% bode(Hf)
Hc=tf(0.9*[10.54 1],[1.054 1]);
Hd=Hf*Hc;
bode(Hd)