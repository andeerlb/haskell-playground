--- Note that there's no = right after the function name and its parameters, before the first guard
densityTell :: (RealFloat a) => a -> String  
densityTell density  
    | density < 1.2 = "Wow! You're going for a ride in the sky!"  
    | density <= 1000.0 = "Have fun swimming, but watch out for sharks!"  
    | otherwise   = "If it's sink or swim, you're going to sink." 

-- max' :: (Ord a) => a -> a -> a  
-- max' a b  
--     | a > b     = a  
--     | otherwise = b  

-- Guards can also be written inline, although I'd advise against that because it's less readable, even for very short functions. But to demonstrate, we could write max' like this:
max' :: (Ord a) => a -> a -> a  
max' a b | a > b = a | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  

-- IO () is the type signature for main
-- It indicates that main is an I/O action that returns no meaningful value
-- IO () is a type constructor that represents an Input/Output (I/O) action
-- The main function is the entry point of a Haskell program
-- It is where the program starts executing
main :: IO ()
main = do
  putStrLn (densityTell 0.5)
  putStrLn (densityTell 500.0)
  putStrLn (densityTell 1500.0)
  putStrLn (show (max' 3 5))
  putStrLn (show (3 `myCompare` 5))
  putStrLn (show (3 `myCompare` 3))