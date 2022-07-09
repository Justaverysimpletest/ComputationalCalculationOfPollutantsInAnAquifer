# Computational_calculation_of_pollutants_in_an_aquifer
This specific repository solves the Differential Equations  that describes the system using 3 different solutions.

The codes that follow firstly read the data from a specific text file that exists in the path. After the variables are assigned, 
the D.E. are being computed using 3 different methods.
1)Runge-Katta
2)ODE45
3)Analytical Solution

The solution of this method follows the plot function that plots the 3 different methods with 3 subplots that are in reality a zoom 
to the original plot highlighting the asked point. We can then see visually the sensitivity and the accuracy of each method

After this, an invesitgation takes place in order to spesicfy the initialize Xa(concentration) for which a certain condition is met. 
AFter this value for each method is computed, we print the results in a new text file in the path.
