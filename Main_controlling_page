close all
clear all
clc

%calculation of pollutants in an aquifer%

%We define here the txt file in which the data are stored of the  
%variables' values  that will be used during the various solutions of the
%of the differential equation.
input_data_file= 'input_data';

%the following function reads the above txt file and assign the values to
%the 7 variables that will be used
[mumax,Ks,Y,S0,SMCL,Xa,Tgoal] = open_and_read_files(input_data_file);

%The following function defines the point in which .... using the
%Runge-Kutta method. In this function we do not use the ready Runge-Kutta
%solution that MATLAB provides but we build it from scratch
[tRK,sr_RK,T_vec_RK,Sr_vec_RK,a_RK]=time_rk(mumax,Y,Ks,Xa,S0,SMCL);

%The following function defines the point in which .... using the
%ODE45 method. In this function we do faced  a problem with negative values
%of Concnetration due to the fact that the method solves the diffrential
%equation defining the values of the solution of the D.E.
%without any restraints concerning the values that the variables
%take(Concentration is a priori a non negative value
[tODE45,sr_ODE45,T_vec_ODE45,Sr_vec_ODE45,a_ODE45]=time_ode(mumax,Y,Ks,Xa,S0,SMCL);

%The following function defines the point in which .... using the
%ODE45 method. In this function we solved analytically using the dsolve
%method and calculating the function that is the solution of the
%differential equation
[t_analytical,sr_analytical,analyt_function]=time_analytical(mumax,Y,Ks,S0,SMCL,Xa);

%The following function plot the above results that were calculated and
%saves the plots at the path as jpg files
plot_function(tRK,sr_RK,T_vec_RK,Sr_vec_RK,a_RK,tODE45,sr_ODE45,T_vec_ODE45,Sr_vec_ODE45,a_ODE45,t_analytical,sr_analytical,analyt_function,input_data_file);

%The following function calculates the specific initialisation value of Xa
%in order to have a a certain time the restraint S==SMCL using RK Method
[X_init_compu_RK]=concentration_RK(Xa,mumax,Y,Ks,S0,SMCL,Tgoal);

%The following function calculates the specific initialisation value of Xa
%in order to have a a certain time the restraint S==SMCL using ODE45 Method
[X_init_compu_ODE]=concentration_ODE45(Xa,mumax,Y,Ks,S0,SMCL,Tgoal);

%The following function calculates the specific initialisation value of Xa
%in order to have a a certain time the restraint S==SMCL using analytical Method
%dsolve
[X_init_compu_analytical]=concentration_analyt(mumax,Y,Ks,S0,SMCL,Tgoal);
%The following function prints the above results a a specifix text file
%which is located at the path
s_results(tRK,X_init_compu_ODE,X_init_compu_RK,tODE45,t_analytical,X_init_compu_analytical);
close all

