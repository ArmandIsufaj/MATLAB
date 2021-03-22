%%%%%%%% Electric force and electric potential

%%%% one conductor  xC = [0, 0, 0, 0]; yC = [0, 0, 0, 0];
%%%% two conductors different placement xC = [0, -0.5, 0.5, -0.5]; yC = [0, -0.5, -0.5, 0.5]; 
%%%% three conductors xC = [-1, 0, 1, 0]; yC = [0, 0, 0, 0]; 
%%%% four conductors xC = [0.5, 0 , -0.5, 0]; yC = [ 0 , 0.5, 0 , -0.5]; 

% Example 1: Three point charges. 
Q = [-20, 20,10, 0] .* 1e-6; 
xC = [-1, 0, 1, 0]; yC = [0, 0, 0, 0]; 
potentialE(Q,xC,yC) % call the function

