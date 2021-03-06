function [ day, weekly_day ] = uk_boxPlot( yy2013, yy2014, yy2015 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

number_of_prices = zeros(7,1);
prices_acum = zeros(7,1);
day = zeros(7,1);

long = size(yy2013);
long = double(long(2));
long2 = size(yy2014);
long2 = double(long2(2));
long3 = size(yy2015);
long3 = double(long3(2));
lenght = long +long2 + long3;
weekly_day = zeros(7, lenght);



i = 1;
while i <= long
    disp('2013');
    disp(i);
    tempEpoch = str2double(yy2013(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    weekDay = weekday(date);
    
    prices_acum(weekDay) = prices_acum(weekDay) + str2double(yy2013(i).price);
    number_of_prices(weekDay) = number_of_prices(weekDay) + 1;
    i = i+1;
end


i = 1;
while i <= long2
    disp('2014');
    disp(i);
    tempEpoch = str2double(yy2014(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    weekDay = weekday(date);
    
    prices_acum(weekDay) = prices_acum(weekDay) + str2double(yy2014(i).price);
    number_of_prices(weekDay) = number_of_prices(weekDay) + 1;
    i = i+1;
end


i = 1;
while i <= long3
    disp('2015');
    disp(i);
    tempEpoch = str2double(yy2015(i).millisUTC);
    date = unix2matlab(tempEpoch);
    date = datetime(date);
    
    weekDay = weekday(date);
    
    prices_acum(weekDay) = prices_acum(weekDay) + str2double(yy2015(i).price);
    number_of_prices(weekDay) = number_of_prices(weekDay) + 1;
    i = i+1;
end

day = number_of_prices ./ prices_acum;

