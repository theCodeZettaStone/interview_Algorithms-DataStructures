function main()
    start = 1
    foo = 5
    bar = 7
    stop = 100
    num = 0
    fooString = "Foo"
    barString = "Bar"
    
    for num = start, stop, 1 do
        if num % foo == 0 & num % bar == 0 then
            print(fooString + barString)
        elseif num % foo == 0 then
            print(fooString)
        elseif num % bar == 0 then
            print(barString)
        else
            print(num)
        end
    end
    return 0
end

main()
