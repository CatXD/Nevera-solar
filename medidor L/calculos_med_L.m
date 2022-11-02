%Medidor inductancias


%  Calculos para hacerlo por tiempo de subida
% % Ve
% %R2 
% %V0
% %R1
% %V0
% %R0
% %GND
% Rt=10000;
% Ve=5;
% 
% 
% V0 = 0.9 * Ve
% V1 = 0.1 * Ve
% 
% I=Ve/Rt;
% R3=(Ve - V0)/I
% R2=(V0-V1)/I
% R1=V1/I
% 
% % V0 =    4.5000
% % V1 =    0.5000
% % R3 =    1000
% % R2 =    8000
% % R1 =    1000


% Calculos para hacerlo por tiempo de subida
% Ve
%R2
%V_ts
%R1
%GND
Rt=10000;
Ve=5;


V_ts = 0.05 * Ve

I=Ve/Rt;
R1 = V_ts/I
R2 = Rt-R1

%R1 = 500
%R2 = 9500
%V_ts = 250 mV


%pic16f88

%necesito V_ref para comparación de 250 mV (0,05Ve)
%CVRR a 1
Vref = V_ts;
%Vref=Vdd*CVR/(8+16)
CVR = Vref/Ve*(8+16); %da 1.2, por lo que voy a usar mejor el divisor resistivo anterior.


%Tiempos esperados:
L_ref = 0.005;
L_min = 10E-6;
L_min_1=15E-6;

R=1000;

ts_L_ref = 3*L_ref*R
ts_L_min = 3*L_min*R
ts_L_min_1 = 3*L_min_1*R

%Ts 2 mH = 6E-7, 

ts_sens = (ts_L_min_1-ts_L_min)
steps= (L_ref-L_min)/(L_min_1-L_min)
%usar TMR1













