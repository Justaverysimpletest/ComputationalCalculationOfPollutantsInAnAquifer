 function [] = s_results(tRK,X_init_compu_ODE,X_init_compu_RK,tODE45,t_analytical,X_init_compu_analytical)
 
    open_file_write = fopen('results .txt', 'w');

    fprintf(open_file_write,'Erotima 1');
    fprintf(open_file_write,'\n');
    fprintf(open_file_write,'\n');
    fprintf(open_file_write,'Method     Tna(days)\n');
    fprintf(open_file_write,'Symbolic   %4.4f\n',t_analytical);
    fprintf(open_file_write,'ODE45      %4.4f\n',tODE45);
    fprintf(open_file_write,'RK4        %4.4f\n',tRK);
    
    fprintf(open_file_write,'Erotima 2');
    fprintf(open_file_write,'\n');
    fprintf(open_file_write,'\n');
    fprintf(open_file_write,'Method     Xa,n (megacells/lt)\n');
    fprintf(open_file_write,'symbolic   %4.4f\n',X_init_compu_analytical/10^6);
    fprintf(open_file_write,'ODE45      %4.4f\n',X_init_compu_ODE/10^6);
    fprintf(open_file_write,'RK4        %4.4f\n',X_init_compu_RK/10^6);  
    fclose all;
 end

