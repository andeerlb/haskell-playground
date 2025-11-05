-- type signature
lucky :: (Integral a) => a -> String  
-- If the argument exactly equals 7, return it
lucky 7 = "LUCKY NUMBER SEVEN!"  
-- For all other numbers, return this
lucky x = "Sorry, you're out of luck, pal!"   

sayMe :: (Integral a) => a -> String  
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5"  

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil"  
charName _   = "Unknown"

main :: IO ()
main = do
  putStrLn (lucky 7)
  putStrLn (lucky 3)
  putStrLn (sayMe 5)
  putStrLn (sayMe 8)
  putStrLn (sayMe 8)
  print (factorial 5)
  putStrLn (charName 'a')
  putStrLn (charName 'b')
  putStrLn (charName 'c')
  putStrLn (charName 'd')