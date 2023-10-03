clear
% define range to plot
x=0:0.1:2*pi;
y=cos(x);
y2=x.^2;
% plot
plot(x,y,'b-')
hold on % to tell matlab that something else is coming, don't clear
plot(x,y2,'r--')
hold off % clear the plot
title('cosine plot')% title of the plot
legend('cosine','parabolic') % legend of the plot, names of the lines
xlabel('meaning of x [units]') % name of the x axis
ylabel('meaning of y [units]') % name of the y axis
