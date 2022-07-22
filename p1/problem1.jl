#It asks for <1000. So it is an interval [1;1000)
multsum = 0
for i ∈ 1:1:999
    if i % 3 == 0 || i % 5 == 0
        global multsum += i
        println("$i is multiple. Current: $multsum")
    end
end

println(multsum)