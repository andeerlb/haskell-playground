# types
Previously we mentioned that Haskell has a static type system. The type of every expression is known at compile time, which leads to safer code.  
Everything in Haskell has a type, so the compiler can reason quite a lot about your program before compiling it.

# what is type?
A type is a kind of label that every expression has. It tells us in which category of things that expression fits. The expression True is a boolean, "hello" is a string, etc.

# let's examine some types
```
ghci> :t 'a'  
'a' :: Char  
ghci> :t True  
True :: Bool  
ghci> :t "HELLO!"  
"HELLO!" :: [Char]  
ghci> :t (True, 'a')  
(True, 'a') :: (Bool, Char)  
ghci> :t 4 == 5  
4 == 5 :: Bool  
```

Here we see that doing `:t` on an expression prints out the expression followed by `::` and its type.  
`::` is read as "has type of"

# types on functions
Functions also have types. When writing our own functions, we can choose to give them an explicit type declaration. This is generally considered to be good practice except when writing very short functions.   
Here's how it looks like with a type declaration.
```
removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]  
```
The parameters are separated with `->` and there's no special distinction between the parameters and the return type. The return type is the last item in the declaration and the parameters are the first three.

# Type variables
What do you think is the type of the head function? Because head takes a list of any type and returns the first element, so what could it be? Let's check!
```
ghci> :t head  
head :: [a] -> a  
```
Type variable. is much like generics in other languages, only in Haskell it's much more powerful because it allows us to easily write very general functions if they don't use any specific behavior of the types in them. Functions that have type variables are called polymorphic functions. The type declaration of head states that it takes a list of any type and returns one element of that type.

