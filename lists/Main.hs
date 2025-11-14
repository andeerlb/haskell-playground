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

main :: IO ()
main = do
    print numberList 
    print stringList
    print combinedNumberList
    print combinedStringList
    print consNumberList
    print consStringList