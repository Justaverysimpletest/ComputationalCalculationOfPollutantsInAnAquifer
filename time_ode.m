function [tna,sr,tt,ss,a]=time_ode(mumax,Y,Ks,Xa,S0,SMCL)
%This function solves the differential equation using the ODE45 method of
%MATLAB
% Ks=0.7;
% mumax=0.4;
% S0=250;
% SMCL=0.005;
% Xa=50000000;
% Y=107000000;

%Starting and ending point of time vector
t_ini=0;
t_end=10^4;
%Length of time vector
Nt=10^4;
%Formign the time vector
t_vector=linspace(t_ini,t_end,Nt);
%Solving of the Differentila equation
[tt,ss] = ode45(@(t,s)(-mumax*s*Xa./(Y*(Ks+s))) , t_vector , S0);

% l=size(tt);
status=0;
t=1;
i=1;
%After some trials we found out that this solution has as a result negative
%concentration values after the calculation of the asked point. So we loop till 
%we find it and no through the whole time vector
while  status==0
    if ss(t)<=SMCL && i ==1
        tna=tt(t);
        sr=ss(t);
        a=t;
        i=i+1;
        if ss(t)<0
            a=a-1;
            tna=tt(a);
            sr=ss(a);            
        end
        status=1;
    else
        t=t+1;
    end
end
end

