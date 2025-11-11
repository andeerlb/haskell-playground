# lists
in haskell, lists are a homogenous data structure. They store several elements of the same type, that means, that we can have a list of integers or a lista of characters but we can't have a list that has a few integers and then a few characters.  
Lists are denoted by square brackets and the values in the lists are separated by commas.  
Strings are just lists of characeters `hello` is just syntactic sugar for `['h', 'e', 'l', 'l', 'o']`, because string are lists, we can use lists functions on them, which is really handy.


# to run
execute
```
ghc Main.hs -o lists && ./lists 
```