t=[1970:1978];
y=[32,38,48,52,61,73,80,84,95];
tab=[t;y];

med1=median(tab(:,1:4)');
med2=median(tab(:,5:9)');

a=(med2(2)-med1(2))/(med2(1)-med1(1));
b=med2(2)-a*med2(1);

plot(tab(1,:),tab(2,:),'ro-')
hold on
plot(t(1:end-1:end),a*t(1:end-1:end)+b,'b')

res1=(y-a*t-b).^2;

med1=median(tab(:,1:5)');
med2=median(tab(:,6:9)');

a=(med2(2)-med1(2))/(med2(1)-med1(1));
b=med2(2)-a*med2(1);
plot(t(1:end-1:end),a*t(1:end-1:end)+b,'g')

res2=(y-a*t-b).^2;

a=((t-mean(t))*(y-mean(y))')/((t-mean(t))*(t-mean(t))');
b=mean(y)-a*mean(t);
plot(t(1:end-1:end),a*t(1:end-1:end)+b,'c')
hold off
resCar=(y-a*t-b).^2;

res=[res1' res2' resCar']
    
