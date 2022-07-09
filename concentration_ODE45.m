function [Xepithimito]=concentration_ODE45(Xa,mumax,Y,Ks,S0,SMCL,Tgoal)

% Ks=0.7;
% mumax=0.4;
% S0=250;
% SMCL=0.005;
% Xa=50000000;
% Y=107000000;
% Tgoal=182.5;
status=0;
% i=1;

%Loop of Calculation of asked initialization value of Xa using ODE45 method
while status==0
    [tna,sr,tt,ss,a]=time_ode(mumax,Y,Ks,Xa,S0,SMCL);
    if tna<=Tgoal
        status=1;
    else
        Xa=Xa+10^5;
%         i=i+1
    end
end
Xepithimito=Xa;

end