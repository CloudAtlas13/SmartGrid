%average_months_per_weeks;

headers = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};

temp = zeros(7,5,12);
for i = 1 : 7
   for j = 1 : 5
      for k = 1 : 12
        temp(i,j,k) = us_average_months_by_weeks(i,j,k);
      end
   end 
end

for i = 1 : 12
    figura = figure (i);
    plot(temp(:, :, i));
    title(headers(i));
    ylabel('$ MW/h');
    legend('Week 1', 'Week 2', 'Week 3', 'Week 4', 'Week 5');
    set(gca, 'XTickLabel',{'Sun','Mon','Tue','Wed','Thu','Fri','Sat'});
    ylim([10 50]);
end


hold off;