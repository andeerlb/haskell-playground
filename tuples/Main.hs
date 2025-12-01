main = do
    let tuple1 = (1, "apple")                     -- A tuple with an integer and a string
    let tuple2 = (3.14, True, 'c')                -- A tuple with a float, a boolean, and a character
    let tuple3 = ("Haskell", 2024, 3.5, False)    -- A tuple with mixed types
    let tuple4 = ((1,2), (3,4))                   -- A nested tuple
    let tuple5 = (("first", 1), ("second", 2))    -- A tuple of tuples
    let tuple7 = ()                                -- An empty tuple (unit type)
    let tuple8 = (1, 2, 3, 4, 5, 6, 7, 8)            -- An 8-element tuple
    let tuple9 = [("1",2),("One",2)]                     -- A list of tuples, though not a tuple itself
    let tuple10 = ((1, "a"), (2, "b"), (3, "c"))     -- A tuple with three elements, each a tuple
    let tuple11 = ("Christopher", "Walken", 55)  -- A tuple representing a person's name and age
    let tuple12 = fst tuple1                     -- Accessing the first element of tuple1
    let tuple13 = snd tuple1                     -- Accessing the second element of tuple1
    let tuple14 = zip [1,2,3] ["one", "two", "three"]  -- Creating a list of tuples from two lists

    print tuple1
    print tuple2
    print tuple3
    print tuple4
    print tuple5
    print tuple7
    print tuple8
    print tuple9
    print tuple10
    print tuple11
    print tuple12
    print tuple13
    print tuple14