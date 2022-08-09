using Random
using BenchmarkTools

include("mm.jl")

function main(n=512)
    Random.seed!(1)
    A = rand(n, n)
    B = rand(n, n)
    C = zeros(n, n)
    return A,B,C
end

A,B,C = main();




b = @benchmark mm!($A, $B,$C)

io = IOBuffer()

show(io, "text/plain", b)

s = String(take!(io))

println(s)



println("***end***")
