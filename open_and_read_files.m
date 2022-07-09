function [mumax,Ks,Y,S0,SMCL,Xa,Tgoal] = open_and_read_files(input_data_file)

%We open and read the data file
file_read = [input_data_file '.dat'];
open_file_read = fopen(file_read, 'r');

%We assign the variables values 
tline = strtrim(fgetl(open_file_read));
mumax = sscanf(tline,'MuMAX: %f');
tline = strtrim(fgetl(open_file_read));
Ks = sscanf(tline,'Ks: %f');
tline = strtrim(fgetl(open_file_read));
Y = sscanf(tline,'Y: %f');
tline = strtrim(fgetl(open_file_read));
S0 = sscanf(tline,'S0: %f');
tline = strtrim(fgetl(open_file_read));
SMCL = sscanf(tline,'SMCL: %f');
tline = strtrim(fgetl(open_file_read));
Xa = sscanf(tline,'Xa: %f');
tline = strtrim(fgetl(open_file_read));
Tgoal = sscanf(tline,'Tgoal: %f');
%We close the data file
close all
 end


