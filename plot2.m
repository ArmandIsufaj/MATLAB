clear
x=0:0.1:2*pi;
y=cos(x);
y2=x.^2;

plot(x,y,'r-')
hold on
plot(x,y2,'b--')
xrange3 = [0,2*pi];
yrange3 = [0,0];
plot(xrange3,yrange3,'k-')
hold off
%----------- customise the plot -------------------
xlabel('x axis, [unit]')
ylabel('y axis, [unit]')
legend('cos function','parabolic funtion')
xlim([0,2*pi])
ylim([-2,2])