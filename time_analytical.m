function [t_analytical,sr_analytical,f2]=time_analytical(mumax,Y,Ks,S0,SMCL,Xa)

%This script computes the analytical solution of the given differential
%equation through dsolve method of MATLAB. Then using fsolve we calculate
%the point that is asked.

% Ks=0.7;
% mumax=0.4;
% S0=250;
% SMCL=0.005;
% Xa=50000000;
% Y=107000000;

ss=simplify(dsolve('Ds=-(mumax/Y)*(s*Xa/(Ks+s))','s(0)=S0','t'));
analytical_function= matlabFunction( ss ) ;
f1=@(t)analytical_function(Ks,S0,Xa,Y,mumax,t)-SMCL;
f2=@(t)analytical_function(Ks,S0,Xa,Y,mumax,t);
%options = optimoptions('fsolve','Display','iter','StepTolerance',0.0001);
%opt= optimoptions('fsolve','algorithm','levenberg-marquardt');
t_analytical=fsolve(f1,1000);
sr_analytical=analytical_function(Ks,S0,Xa,Y,mumax,t_analytical);


end


