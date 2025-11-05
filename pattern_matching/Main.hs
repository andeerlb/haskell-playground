-- type signature
lucky :: (Integral a) => a -> String  
-- If the argument exactly equals 7, return it
lucky 7 = "LUCKY NUMBER SEVEN!"  
-- For all other numbers, return this
lucky x = "Sorry, you're out of luck, pal!"   

main :: IO ()
main = do
  putStrLn (lucky 7)
  putStrLn (lucky 3)