function [sdot]=func(s,mumax,Y,Ks,Xa)
%status_concentr=0;
%while status_concentr==0
    sdot=-mumax*s*Xa./(Y*(Ks+s));
    %if sdot<=0
        %disp('Arnitiki Sigedrwsi')
        %close all
        %status_concentr=1;
    %end
%     if sdot<=0
%         break
%     end
        
    
    
end
