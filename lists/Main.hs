-- syntax to define a list of integers
numberList = [4,815,16,23,42]
-- syntax to define a list of strings
stringList = ["apple", "banana", "cherry"]

-- concatenation of two lists, the ++ operator is used to concatenate lists
combinedNumberList = numberList ++ [7, 8, 9] ++ [10]
combinedStringList = stringList ++ ["date", "elderberry"]

main :: IO ()
main = do
    print numberList 
    print stringList
    print combinedNumberList
    print combinedStringList