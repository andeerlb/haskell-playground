main = do
    putStrLn "Hello, World!"
    putStrLn "Welcome to Haskell programming."
    putStrLn ("Please, look at my favorite odd numbers" ++ show (filter odd [1,3..19]))