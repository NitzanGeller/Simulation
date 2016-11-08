%question 1 c
data=[1 3;2 6;4 18;3 14;4 17;5 23;6 29;6 30;1 2;4 16;1 3;6 31;6 31;7 40;1 2;2 6;8 50];
data=sort(data,1,'ascend');
xData=data(:,1);
yData=data(:,2);

%plots red linear equation
P = polyfit(xData,yData,1);
yfit = P(1)*xData+P(2);

hold on;
plot(xData,yfit,'red');
title('Model output vs Model input');
xlabel('Model Output');
ylabel('Model input');

%plots green linear equation
plot(yData,yData,'green');
hold on

%plots data scatter
scatter(xData,yData,'o','blue');

%question 2

%common ticket format: [(6 regular numbers) (bonus number)]
bet=[Lottory(36,6,100);Lottory(7,1,100)];

