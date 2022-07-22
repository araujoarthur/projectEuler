#[1:4E6)

function (⨹)( le, fe, me )
    if (le + fe) < me
        return true
    else
        return false
    end
end

Fib = Vector([1, 1])
evenSum = 0

while true
    if Fib[end] <= 4E6 && ⨹(Fib[end], Fib[end-1], 4E6)
        sum = Fib[end] + Fib[end-1]# https://docs.julialang.org/en/v1/manual/metaprogramming/#Evaluating-expressions⨹
        append!(Fib, sum)
        if sum % 2 == 0
            global evenSum += sum
        end
    else
        break
    end
end

println(evenSum)
