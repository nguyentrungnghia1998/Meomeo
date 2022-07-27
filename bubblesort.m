function B = bubblesort(A)
A
for i = 1:length(A)-1
    for j = 1:length(A)-i
        if A(j)>A(j+1)
            [A(j) A(j+1)] = deal(A(j+1),A(j));
        end
        fprintf("i = %d, j = %d",i-1,j);
        A
    end
end
B = A;
end