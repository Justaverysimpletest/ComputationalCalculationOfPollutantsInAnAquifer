function [] = plot_function(tRK,sr_RK,T_vec_RK,Sr_vec_RK,a_RK,tODE45,sr_ODE45,T_vec_ODE45,Sr_vec_ODE45,a_ODE45,t_analytical,sr_analytical,analyt_function,input_data_file)
%This function plots time-concentrations graphs for all the above methods

%RK Method
%Plot1
fig1=figure();
semilogy(T_vec_RK(1:a_RK+100),Sr_vec_RK(1:a_RK+100),'k','LineWidth',2)
hold on
semilogy(tRK,sr_RK,'or','MarkerSize',12)
set(gca,'FontSize',16)
xlabel('time')
ylabel('Concentration')
title('Runge Kutta Method')
print(fig1,sprintf('%s%d',input_data_file,1),'-djpeg');
hold off
%Plot2
fig2=figure();
semilogy(T_vec_RK(a_RK-10:a_RK+10),Sr_vec_RK(a_RK-10:a_RK+10),'k','LineWidth',2)
hold on
semilogy(a_RK,Sr_vec_RK(a_RK),'or','MarkerSize',12)
set(gca,'FontSize',16)
xlabel('time')
ylabel('Concentration')
title('Runge Kutta Method (zoom)')
print(fig2,sprintf('%s%d',input_data_file,2),'-djpeg');

%ODE45 Method
%Plot1
fig3=figure();
semilogy(T_vec_ODE45(1:a_ODE45),Sr_vec_ODE45(1:a_ODE45),'r','LineWidth',2)
hold on
% semilogy(a,ss(a),'or','MarkerSize',12)
semilogy(tODE45,sr_ODE45,'or','MarkerSize',12)
set(gca,'FontSize',16)
xlabel('time')
ylabel('Concentration')
title('ODE45 Solution')
print(fig3,sprintf('%s%d',input_data_file,3),'-djpeg');
% Plot2
fig4=figure();
semilogy(T_vec_ODE45(a_ODE45-10:a_ODE45),Sr_vec_ODE45(a_ODE45-10:a_ODE45),'k','LineWidth',2)
hold on
% semilogy(tt(a),ss(a),'or','MarkerSize',12)
semilogy(tODE45,sr_ODE45,'or','MarkerSize',12)
set(gca,'FontSize',16)
xlabel('time')
ylabel('Concentration')
title('ODE45 Solution(zoom)')
print(fig4,sprintf('%s%d',input_data_file,4),'-djpeg');
hold off

%Analytical Method
%Plot1
fig5=figure();
fplot(analyt_function,[0,1500]);
set(gca, 'YScale','log','FontSize',16)
xlabel('time')
ylabel('Concentration')
title('Analytical Solution')
print(fig5,sprintf('%s%d',input_data_file,5),'-djpeg');
hold on
semilogy(t_analytical,sr_analytical,'or','MarkerSize',12)
%Plot2
fig6=figure();
fplot(analyt_function,[t_analytical-10,t_analytical+10]);
set(gca, 'YScale','log','FontSize',16)
xlabel('time')
ylabel('Concentration')
title('Analytical Solution (zoom)')
print(fig6,sprintf('%s%d',input_data_file,6),'-djpeg');
hold on
semilogy(t_analytical,sr_analytical,'or','MarkerSize',12)

end

