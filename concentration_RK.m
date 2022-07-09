function [XinitRK]=concentration_RK(Xa,mumax,Y,Ks,S0,SMCL,Tgoal)
% Ks=0.7;
% mumax=0.4;
% S0=250;
% SMCL=0.005;
% Xa=50000000;
% Y=107000000;
% Tgoal=182.5;
status=0;

%Loop of Calculation of asked initialization value of Xa using RK method
while status==0
    [tna,sr,T,Sr,a]=time_rk(mumax,Y,Ks,Xa,S0,SMCL);
    if tna<=Tgoal
        status=1;
    else
        Xa=Xa+10^5;
    end
end
XinitRK=Xa;
 end