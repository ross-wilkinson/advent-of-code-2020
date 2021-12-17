function [sol, singles, triples] = adapterChain(adapters)
% Finds adapter chain required to connect source to charging outlet

%% Part 1
sorted = sort(adapters);
diffs = diff(sorted);

singles = sum(diffs == 1) + 1;
triples = sum(diffs == 3) + 1;

sol = singles * triples

end

