function difference = arrayDifference(array1 
for i = 1:10
    for ix = 1:10
       difference(i,ix) = array1(i,ix) - array2(i,ix);
    end
end
