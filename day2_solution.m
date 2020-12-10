%% Advent of code - Day 2

[lim, letter, password] = readvars('day2_input.txt');

%% Part 1
[low, high, occur1] = deal(NaN(numel(lim),1));

for i = 1:numel(lim)
    switch numel(lim{i})
        case 3
            low(i) = str2double(lim{i}(1));
            high(i) = str2double(lim{i}(3));
        case 4
            low(i) = str2double(lim{i}(1));
            high(i) = str2double(lim{i}(3:4));
        case 5
            low(i) = str2double(lim{i}(1:2));
            high(i) = str2double(lim{i}(4:5));
    end
    occur1(i) = numel(strfind(password{i},letter{i}(1)));
end

valid1 = occur1 >= low & occur1 <= high;
sol1 = sum(valid1)

%% Part 2
[idx1, idx2] = deal(NaN(numel(lim),1));

for i = 1:numel(lim)
    switch numel(lim{i})
        case 3
            idx1(i) = str2double(lim{i}(1));
            idx2(i) = str2double(lim{i}(3));
        case 4
            idx1(i) = str2double(lim{i}(1));
            idx2(i) = str2double(lim{i}(3:4));
        case 5
            idx1(i) = str2double(lim{i}(1:2));
            idx2(i) = str2double(lim{i}(4:5));
    end
    
    occur2{i} = intersect(strfind(password{i},letter{i}(1)),[idx1(i) idx2(i)]);
    valid2(i) = numel(occur2{i}) == 1;

end

sol2 = sum(valid2)
