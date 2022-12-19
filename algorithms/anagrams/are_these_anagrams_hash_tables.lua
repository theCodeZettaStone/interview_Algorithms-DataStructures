local F = require('F')


function main()
    print("Enter string number 1: \n");
    io.flush()
    string_input1 = io.read()
    print("Got it. Thanks!")
    print("Enter string number 2: \n")
    string_input2 = io.read()
    print(areTheseAnagramsHashTables(string_input1, string_input2))
end


function areTheseAnagramsHashTables(s1, s2)
    local frequency_map1 = {}
    local frequency_map2 = {}
    if #s1 ~= #s2 then
        return "These are not anagrams"
    else
        for i = 1, #s1 do
            local chr = s1:sub(i, i)
            if frequency_map1[chr] then
                frequency_map1[chr] = frequency_map1[chr] + 1
            else
                frequency_map1[chr] = 1
            end
        end
        local sorted_frequency_array1 = {}
        for n in pairs(frequency_map1) do table.insert(sorted_frequency_array1, n) end
        table.sort(sorted_frequency_array1)
        counter = 0
        io.write("{")
        for i, v in ipairs(sorted_frequency_array1) do
            counter = counter + 1
            if counter < #sorted_frequency_array1 then
                io.write(F"'{v}': {i}, ")
            else
                io.write(F"'{v}': {i}")
            end
        end
        io.write("}")
        for i = 1, #s2 do
            local chr = s2:sub(i, i)
            if frequency_map2[chr] then
                frequency_map2[chr] = frequency_map2[chr] + 1
            else
                frequency_map2[chr] = 1
            end
        end
        io.write('\n')
        sorted_frequency_array2 = {}
        for n in pairs(frequency_map2) do table.insert(sorted_frequency_array2, n) end
        table.sort(sorted_frequency_array2)
        counter = 0
        io.write("{")
        for i, v in ipairs(sorted_frequency_array2) do
            counter = counter + 1
            if counter < #sorted_frequency_array2 then
                io.write(F"'{v}': {i}, ")
            else
                io.write(F"'{v}': {i}")
            end
        end
        io.write("}")
        for i, v in pairs(frequency_map1) do
            if frequency_map2[i] == nil or frequency_map1[i] ~=  frequency_map2[i] then
                return ("\nThese are not anagrams")
            end
        end
        return ("\nThese are anagrams")
    end
end


main()
