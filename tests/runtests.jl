using Test

include("../fizzbuzz.jl")

@testset "fizzbuzz" begin
    @test_throws DomainError fizzbuzz(0, 3, 4)
    @test_throws DomainError fizzbuzz(-1, 3, 4)
    @test_throws DomainError fizzbuzz(1, 0, 4)
    @test_throws DomainError fizzbuzz(1, -1, 4)
    @test_throws DomainError fizzbuzz(1, 4, 0)
    @test_throws DomainError fizzbuzz(1, 4, -1)

    @test fizzbuzz(1, 3, 5) == []
    @test fizzbuzz(3, 3, 5) == ["fizz"]
    @test fizzbuzz(3, 5, 3) == ["buzz"]
    @test fizzbuzz(5, 5, 3) == ["buzz", "fizz"]
    @test fizzbuzz(15, 3, 5) == ["fizz", "buzz", "fizz", "fizz", "buzz", "fizz", "fizzbuzz"]
end
