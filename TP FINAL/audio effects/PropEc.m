%A proposed natural sounding reveberator
%Vikas Sahdev
%Rajesh Samudrala
%Rajani Sadasivam
%
function f3 = PropEc();

a1=0.6;
a2=0.4;
a3=0.2;
a4=0.1;
a5=0.7;
a6=0.6;
a7=0.8;
R1=700;
R2=900;
R3=600;
R4=400;
R5=450;
R6=390;
[d,r]=audioread('clakson.wav');
num1=[0,zeros(1,R1-1),1];
den1=[1,zeros(1,R1-1),-a1];
d1=filter(num1,den1,d);
num2=[0,zeros(1,R2-1),1];
den2=[1,zeros(1,R2-1),-a2];
d2=filter(num2,den2,d);
num3=[0,zeros(1,R3-1),1];
den3=[1,zeros(1,R3-1),-a3];
d3=filter(num3,den3,d);
num4=[0,zeros(1,R4-1),1];
den4=[1,zeros(1,R4-1),-a4];
d4=filter(num4,den4,d);
dIIR=d1+d2+d3+d4;
num5=[a5,zeros(1,R5-1),1];
den5=[1,zeros(1,R5-1),a5];
dALL1=filter(num5,den5,dIIR);
num5=[a6,zeros(1,R6-1),1];
den5=[1,zeros(1,R6-1),a6];
dALL2=filter(num5,den5,dALL1);
dTOTAL=d+a7*dALL2;
soundsc(dTOTAL,r);
audiowrite('prop.wav', dTOTAL, 22050);