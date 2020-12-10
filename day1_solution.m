%% Advent of code - Day 1

expenseReport = table2array(readtable('day1_input.txt'));

diff = 2020 - expenseReport;
C = intersect(expenseReport,diff);
sol = C(1) * C(2)