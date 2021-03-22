% Created By Armand Isufaj
clear % clear the previously stored data
width=input('What is the width of the beam:');
depth=input('What is the depth of the beam:');
moment=(width*(depth^3))/12;
disp('The moment of inertia is:')
disp(moment)