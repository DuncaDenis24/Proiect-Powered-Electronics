t=-5:0.1:5;
E=50;
U0=15;
f=10*3e3
miu=U0/E
Rsn=10;
IoN=U0/Rsn
Il=0.25*IoN
Uo=(3.5/100)*U0
L=((1-miu)*miu*E)/(f*Il)
C=(miu*Il)/(f*Uo)


A=[0 -1/L; 1/Rsn/C -1/C/Rsn];
B=[1/L;0];
C=[0 1];
D=0;
H=ss(A,B,C,D);

u = ones(size(t))*E; % Step input
[y, t_out, x] = lsim(H, u, t);
figure;
plot(t_out, y, 'LineWidth', 1.5);
grid on;