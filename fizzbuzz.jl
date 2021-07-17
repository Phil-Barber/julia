function fizzbuzz(n, fizz, buzz)
    for arg in [n, fizz, buzz]
        if arg <= 0
            throw(DomainError(arg, "Arg must be greater than 0"))
        end
    end

    fizzbuzz = []
    i = 1
    while i <= n
        string = ""
        if i % fizz == 0
            string = string * "fizz"
        end
        if i % buzz == 0
            string = string * "buzz"
        end

        if !isempty(string)
            println(i, "\t", string)
            push!(fizzbuzz, string)
        end

        i += 1
    end
    return fizzbuzz
end
