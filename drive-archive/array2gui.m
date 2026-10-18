%function array2gui(array)
array = randomPlacement;
array = array2one(array);
Alphabet = 'abcdefghij';
for ix = 1:10
    for i = 1:10
        if array(ix,i) == 1
            Command = (['handles.',Alphabet(ix),num2str(i),'Button.Value=1']);
        else
            Command = (['handles.',Alphabet(ix),num2str(i),'Button.Value=0']);
        end
        eval(Command);      
    end
end
