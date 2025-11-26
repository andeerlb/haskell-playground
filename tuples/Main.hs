main = do
    let tuple1 = (1, "apple")                     -- A tuple with an integer and a string
    let tuple2 = (3.14, True, 'c')                -- A tuple with a float, a boolean, and a character
    let tuple3 = ("Haskell", 2024, 3.5, False)    -- A tuple with mixed types
    let tuple4 = ((1,2), (3,4))                   -- A nested tuple
    let tuple5 = (("first", 1), ("second", 2))    -- A tuple of tuples
    let tuple6 = (42,)                             -- A single-element tuple
    let tuple7 = ()                                -- An empty tuple (unit type)

    print tuple1
    print tuple2
    print tuple3
    print tuple4
    print tuple5
    print tuple6
    print tuple7