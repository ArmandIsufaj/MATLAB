% Created by Armand Isufaj


clear % clears matlab memory

% --- Section 1 --- plot a needle at a random position ---

% --- variables ---
l = 3; % length of the 'needle'

% axis limits
xAxisLowerLimit = -10;
xAxisUpperLimit =  10;

yAxisLowerLimit = -10;
yAxisUpperLimit =  10;

% limits for random number generator for x co-ordinates
xLowerLim = -10; % lower limit
xUpperLim = 10;  % upper limit

% lmits for random number generator for the angle 'theta'
thetaLowerLim = 0;   % lower limit
thetaUpperLim = 360; % upper limit


% --- calculations ---

% calculates the random angle between point A and B
theta = (thetaUpperLim-thetaLowerLim)*rand(1) + thetaLowerLim;

% calculates the random x co-ordinate of point A
xA = ((xUpperLim-xLowerLim)*rand(1) + xLowerLim);

% calculates the random y co-ordinate of point A
yA = ((xUpperLim-xLowerLim)*rand(1) + xLowerLim);

% calculates the random x co-ordinate of point B using trigonometry
xB = xA + (l * cos(theta));

% calculates the random y co-ordinate of point B using trigonometry
yB = yA + (l * sin(theta));

% store the x values of points A and B in an array
x = [xA xB];

% store the y values of points A and B in an array
y = [yA yB];

% --- plotting ---

axis square 

clf % clears the figure screen
% set the axis limits
figure(1) % plot on figure 1
axis([xAxisLowerLimit xAxisUpperLimit yAxisLowerLimit yAxisUpperLimit])

% to wait for a new curve in the same plot 
hold on

% plot a solid black horizontal line from x=-10 to x=10 at y=0
figure(1)
plot([-10,10],[0,0],'k-')


% plots the needle as a solid black line

plot(x,y,'k-')
hold off 
% to tell matlab that no more curves will be added 



% --- section 2 ---

% variable used to determine how mant needles cross the y=0 line
needleCrossed = 0;

% preallocating space to array to make the code run much faster

% stores 50 elements withe value 0
xArrayA = zeros(1,50);  % array for values of x for point A
yArrayA = zeros(1,50);  % array for values of y for point A

xArrayB = zeros(1,50);  % array for values of x for point B
yArrayB = zeros(1,50);  % array for values of y for point B

% for loop runs the following code 50 times
for i=1:50
    
    % calculates the random angle between point A and B
    theta = (thetaUpperLim-thetaLowerLim)*rand(1) + thetaLowerLim;

    % calculates the random x co-ordinate of point A
    xA = ((xUpperLim-xLowerLim)*rand(1) + xLowerLim);
    
    % stores the value of 'xA' in element 'i' of the array
    xArrayA(i) = xA;

    % calculates the random y co-ordinate of point A
    yA = ((xUpperLim-xLowerLim)*rand(1) + xLowerLim);
    
    % stores the value of 'yA' in element 'i' of the array
    yArrayA(i) = yA;
    
    % calculates the random x co-ordinate of point B using trigonometry
    xB = xA + (l * cos(theta));
    
    % stores the value of 'xB' in element 'i' of the array
    xArrayB(i) = xB;

    % calculates the random y co-ordinate of point B using trigonometry
    yB = yA + (l * sin(theta));
    
    % stores the value of 'yB' in element 'i' of the array
    yArrayB(i) = yB;
    
    % store the x co-ordinate of point A and point B in array 'x'
    x = [xArrayA(i),xArrayB(i)];
    
    % store the y co-ordinate of point A and point B in array 'y'
    y = [yArrayA(i),yArrayB(i)];
    
    % --- plotting ---
    
    axis square % make both axis the same length
    
    
    figure(2) %plot on figure 2
    
    % set the axis limits
    axis([xAxisLowerLimit xAxisUpperLimit yAxisLowerLimit yAxisUpperLimit])

    % to wait for a new curve in the same plot 
    hold on
     
    % plot a solid black horizontal line from x=-10 to x=10 at y=0
    plot([-10,10],[0,0],'k-') 


    % plots the needle as a solid black line
    plot(x,y,'k-')

    % to tell matlab that no more curves will be added 
    hold off
    
    % if statement that check if needle crossed the y=0 line
    if yA>0 && yB<0 || yB>0 && yA<0 
        % if the statement is true, 1 is added to 'needleCrossed'
        needleCrossed = needleCrossed + 1;
        
          
    end
end

% displays the following text to the command window
disp("needles crossed as a percentage is:")

% displays the percentage of needles that crossed the line y=0
disp((needleCrossed/50)*100)


% --- section 3 --- 


% runs the following code 50 times
for i = 1:50
    
% recalls from memory the arrays with the co-ordinates for point A and B
    
    % assigns the i element values to the array 'x'
    x = [xArrayA(i),xArrayB(i)];
    
    % assigns the i element y co-ordinates to the array 'y'
    y = [yArrayA(i),yArrayB(i)];
    
    axis square % make both axis the same length
    figure(3)   % plot on figure 3
    
    % set the axis limits
    axis([xAxisLowerLimit xAxisUpperLimit yAxisLowerLimit yAxisUpperLimit])

    % to wait for a new curve in the same plot 
    hold on
     
    % plot a solid black horizontal line from x=-10 to x=10 at y=0
    plot([-10,10],[0,0],'k-') 


    % plots the needle as a solid black line
    plot(x,y,'k-')
    
    % if statement checks if the needle crosses the line y=0
    if yArrayA(i)>0 && yArrayB(i)<0 || yArrayB(i)>0 && yArrayA(i)<0 
      
        % if the statement is true a red line with width 2 will be plotted
        plot(x,y,'r-','LineWidth',2)
        
        % to tell matlab that no more curves will be added 
        hold off
          
    end
end