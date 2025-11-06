densityTell :: (RealFloat a) => a -> String  
densityTell density  
    | density < 1.2 = "Wow! You're going for a ride in the sky!"  
    | density <= 1000.0 = "Have fun swimming, but watch out for sharks!"  
    | otherwise   = "If it's sink or swim, you're going to sink." 

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