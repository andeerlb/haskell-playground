-- syntax to define a list of integers
numberList = [4,815,16,23,42]
-- syntax to define a list of strings
stringList = ["apple", "banana", "cherry"]

-- concatenation of two lists, the ++ operator is used to concatenate lists, it will put all elements of the second list after the first list (at the end of the first list)
-- concatenation is not as efficient as the cons operator when adding a single element to the front of a list
combinedNumberList = numberList ++ [7, 8, 9] ++ [10]
combinedStringList = stringList ++ ["date", "elderberry"]

-- cons operator, the : operator is used to add an element to the front of a list
-- const operator is instantly evaluated, so it is more efficient than concatenation when adding a single element to the front of a list
consNumberList = 3 : numberList
consStringList = "apricot" : stringList

-- if you want to get an element out of a list, you can use list by index, use !!. The index is zero-based.
-- For example, to get the first element of numberList, you would use numberList !! 0
indexFromListSteve = "Steve Jobs" !! 3 -- This will return 'e'
indexFromListNumbers = [9.4,33.2,96.2,11.2,23.25] !! 1  -- This will return 33.2

main :: IO ()
main = do
    print numberList 
    print stringList
    print combinedNumberList
    print combinedStringList
    print consNumberList
    print consStringList
    print indexFromListSteve
    print indexFromListNumbers