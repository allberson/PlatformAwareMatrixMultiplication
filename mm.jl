using PlatformAware


@platform default function mm!(A,B,C)
    n,m = size(A)
    for i in 1:n
        for j in 1:m 
            for k in 1:m
                C[i,j] += A[i,k]*B[k,j]
            end
        end
    end
end


