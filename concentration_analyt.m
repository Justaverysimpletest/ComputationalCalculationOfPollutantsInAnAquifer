function [Xa_analytical]=concentration_analyt(mumax,Y,Ks,S0,SMCL,Tgoal)

%Loop of Calculation of asked initialization value of Xa using analytical method
ss=simplify(dsolve('Ds=-(mumax/Y)*(s*Xa/(Ks+s))','s(0)=S0','t'));
analytical_function= matlabFunction( ss ) ;

f1=@(Xa)analytical_function(Ks,S0,Xa,Y,mumax,Tgoal)-SMCL;
f2=@(t)analytical_function(Ks,S0,Xa,Y,mumax,t);
%options = optimoptions('fsolve','Display','iter','StepTolerance',0.0001);
%opt= optimoptions('fsolve','algorithm','levenberg-marquardt');
Xa_analytical=fsolve(f1,10^7);

end