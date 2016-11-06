%question 2
function maxValues = Lottory(maxValue,N,repeats)
%maxValue represents the roll's max possible value. assumed to be positive.
%N represents output size - the number of distinct values.
%repeats represents number of rolls.
%example: Lottory(36,6,100) returns 6 most common values between 1 and 36, based on 100 random rolls.

%sample will store all rolled values
sample=[]; 

for i=1:repeats
	%adds N distinct values to sample each roll
	sample=[sample randperm(maxValue,N)]; 
end

%counts the number of occurrences of each rolled value.
freq = accumarray(sample(:),1)	; 

% we sort freq in descending order, so the first N elements are the N maximum values.
[~,sortedIndices] = sort(freq,'descend');

maxValues = sortedIndices(1:N);


