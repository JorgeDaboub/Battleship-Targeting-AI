function array = form2array(excelfile)

% Variables to check against the cell array
numb1 = ('1,');
numb=('234567890');

% Loading the xlsx into a cell
K = table2cell(readtable(excelfile));
[trows,~] = size(K);

% Inizialiting the array to save the results
array = zeros(10,10,trows);

%Going down the rows of the table
for runs = 1:trows
    %Going accros each column of the table
    for ix = 2:11
        % Checking if it has a 1
        if contains(K(runs,ix),numb1)
            array((ix-1),1,runs) = 1;
        end
        
        %Checking each number in the cell
        for i = 1:9
            if contains(K(runs,ix),numb(i))
                array(ix-1,i+1,runs) = 1;
            end
        end
    end
end
