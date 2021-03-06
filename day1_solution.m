%% Advent of code - Day 1

%% Load input
expenseReport = importdata('day1_input.txt');

%% Part 1
diff1 = 2020 - expenseReport;
C1 = intersect(expenseReport,diff1);
sol1 = C1(1) * C1(2)

%% Part 2
A = bsxfun(@plus,expenseReport,expenseReport');
diff2 = 2020-A;
C2 = intersect(expenseReport,diff2);
sol2 = C2(1) * C2(2) * C2(3)