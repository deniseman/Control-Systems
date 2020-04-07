close all

%se dau
Vr1=1;
Vr2=2;
Vr3=5;
Hf=tf([5],[2 1]);
%regulator PI cu Ti=1 si Vr=2

figure('name','Vr1');
Hd1=series(Hf,Vr1); 
H01=feedback(Hd1,1); %sistem cu RN rigida

t=0:0.01:10;

%sa se evidentieze estp estv pt acest sistem
subplot(2,1,1)
step(H01)

subplot(2,1,2)
lsim(H01,t,t)

figure('name','Vr2');
Hd2=series(Hf,Vr2);
H02=feedback(Hd2,1);

subplot(2,1,1)
step(H02)

subplot(2,1,2)
lsim(H02,t,t)

figure('name','Vr3');
Hd3=series(Hf,Vr3);
H03=feedback(Hd3,1);

subplot(2,1,1)
step(H03)

subplot(2,1,2)
lsim(H03,t,t)

%%
%Sa se scrie fdt in raport cu perturbatia "p" si sa se evidentieze efectul
    %perturbatiei asupra iesirii in cazul unui regulator P si a unuia PI
    %(Vr=2,Ti=1)
figure('name','ii)');

Hr=tf([2 2],[1 0]); %calculata in caiet. 
Hreac=series(Hr,Hf); %fdt pe reactie cu perturbatia la intrare.

H0ii=feedback(1,Hreac); %fdt a sist inchis cand pe intrare avem perturbatia

step(H0ii)
%%
figure('name','iii)');
%Se va urmari raspunsul sistemului la o referinta treapta unitara
t=0:100; 
p=zeros(1,length(t)); %perturbatia p variaza in trepte de 0.2 0.3 si 0.4
                      %regulator PI cu Vr=2 Ti=1;
%treptele perturbatiei
p(10:40)=0.2;
p(40:70)=0.3;
p(70:100)=0.4;

%acelasi desen din caiet
H01=feedback(Hreac,1); %fdt a sist inchis fara perturbatie
H02=feedback(1,Hreac); %fdt a sist inchis cand pe intrare avem perturbatia

%se urmareste rasp sistemului la intrare tip treapta
y1=step(H01,t); %raspunsul sistemului inchis la treata, fara perturbatie
y2=lsim(H02,p,t); %rasp sist inchis la teapta, cu perturbatia
yt=y1+y2; %ytotal=suma celor doua raspunsuri. Deoarece si intrarea si perturbatia
                %afecteaza raspunsul final
plot(t,yt)




 
 