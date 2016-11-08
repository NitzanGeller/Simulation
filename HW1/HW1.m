%305080897
%305583700

%question 1.A
%creation of the matrix
My_Matrix = [255,253,253,250,253,244;
    253,251,252,251,251,252;
    251,250,247,249,249,250;
    246,245,243,247,248,248;
    241,242,242,242,245,246;
    237,237,237,238,241,243;
    230,231,234,237,240,241;
    225,226,229,233,239,239;
    216,219,224,230,240,242;
    205,217,221,227,234,242;
    184,199,211,219,233,240];
[Rows,Cols] = size(My_Matrix);
Temp_Matrix = zeros(5,Cols);
%creation of cols mean
for i = (Rows-4):Rows
    for j=1:6
        Temp_Matrix(i-6,j) = My_Matrix(i,j);
    end
end
Cols_Mean_Of_Last_5_Numbers = mean(Temp_Matrix);
My_Trans_Matrix = My_Matrix';
%std for each row
Rows_std = std(My_Trans_Matrix);
%finding the index of the highest value
Highest_Value = My_Matrix(1,1);
r=1;c=1;
for i = 1:Rows
    for j=1:6
        if Highest_Value<=My_Matrix(i,j)
            r=i;
            c=j;
        end
    end
end
Index_Of_Highest_Value = [r,c];
Number_Of_Rows_And_Cols = [Rows,Cols];
Vector_Between_235_240 = My_Matrix(My_Matrix>235 & My_Matrix<=240)';
Squred_Values_Matrix = My_Matrix.^2;

%question 1.B
%creation of the matrix and histogram
Matrix_100_by_100 = rand(100,100);
histogram(Matrix_100_by_100);
%finding the indexes of the higher or equals values than 0.5 and creating
%two seperating vectors
Indexes_Of_Higher = find(Matrix_100_by_100>=0.5);
Lower_Than = [];
Higher_Than = [];
for i = 1:100
    for j=1:100
        if Matrix_100_by_100(i,j)<0.5
            Lower_Than = [Lower_Than,Matrix_100_by_100(i,j)];
        else 
            Higher_Than = [Higher_Than,Matrix_100_by_100(i,j)];
        end   
    end
end
histogram(Lower_Than);
histogram(Higher_Than);

%question 1.C
Data=[1 3;2 6;4 18;3 14;4 17;5 23;6 29;6 30;1 2;4 16;1 3;6 31;6 31;7 40;1 2;2 6;8 50];
Data=sort(Data,1,'ascend');
X_Data=Data(:,1);
Y_Data=Data(:,2);
plot(X_Data,Y_Data,'bo');
title('Model output vs Model input ');
xlabel('Model input');
ylabel('Model output');
axis([1 60 1 60]);
Kav=lsline;
set(Kav,'color','r');
hold on
plot([1 60],[1 60],'g');
axis([1 60 1 60]);

%common ticket format: [(6 regular numbers);(bonus number)]

sample=[]; 

for i=1:100
	%adds 6 distinct values to sample each roll
	sample=[sample randperm(36,6)]; 
end

%counts the number of occurrences of each rolled value.
freq = accumarray(sample(:),1)	; 

% we sort freq in descending order, so the first 6 elements are the 6 maximum values.
[~,regular_I] = sort(freq,'descend');

maxValues = regular_I(1:6);

Bonus_Sample=[]; 

for i=1:100
	%adds 1 value to sample each roll
	Bonus_Sample=[Bonus_Sample randperm(7,1)]; 
end

%counts the number of occurrences of each rolled value.
Bonus_freq = accumarray(Bonus_Sample(:),1)	; 

% we sort freq in descending order, so the first element is the bonus number.
[~,Bonus_I] = sort(Bonus_freq,'descend');

Bonus_Value = Bonus_I(1:1);

Lottory_Ticket=[maxValues;Bonus_Value];
