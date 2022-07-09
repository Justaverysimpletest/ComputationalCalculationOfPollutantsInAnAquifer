function [tna,sr,T,Sr,a]=time_rk(mumax,Y,Ks,Xa,S0,SMCL)
%This function solves the differential equation using Runge-Kutta method
%without the default MATLAB method but from scratch. It also calculates the
%point [tna.sr] in which ....

%Starting and ending point of time vector
t_ini=0;
t_end=10^4;
%Length of time vector
Nt=10^4;
%Timestep
timestep=(t_end-t_ini)/Nt;
%Initialization of time and concentration vector
T(1)=t_ini;
Sr(1)=S0;
i=1;

for t=2:timestep:Nt+1    
    k1=func(Sr(t-1),mumax,Y,Ks,Xa);    
    k2=func((Sr(t-1)+k1*timestep/2),mumax,Y,Ks,Xa);    
    k3=func((Sr(t-1)+k2*timestep/2),mumax,Y,Ks,Xa);    
    k4=func((Sr(t-1)+k3*timestep),mumax,Y,Ks,Xa);  
    Sr(t)=Sr(t-1)+timestep*(k1+2*k2+2*k3+k4)/6;
    %calculation of point where....
    if Sr(t)<=SMCL && i ==1        
        tna=t;
        sr=Sr(t);
        a=t;
        i=i+1;              
    end
    T(t)=t;
end
end