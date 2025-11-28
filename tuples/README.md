# Tuples
In some ways, tuples are like lists.  
Tuples, are used when you know exactly how many values you want to combine and its type depends on how many components it has and the types of the components. They are denoted with parentheses and their components are separated by commas.  
Another key difference is that they don't have to be homogenous. Unlike a list, a tuple can contain a combination of several types.

### fst 
fst takes a pair and returns its first component.
```
ghci> fst (8,11)  
8  
ghci> fst ("Wow", False)  
"Wow"
```

### snd
snd takes a pair and returns its second component.
```
ghci> snd (8,11)  
11  
ghci> snd ("Wow", False)  
False  
```

Note: fst and snd functions operate only on pairs. They won't work on triples, 4-tuples, 5-tuples, etc. We'll go over extracting data from tuples in different ways a bit later.

### zip
 It takes two lists and then zips them together into one list by joining the matching elements into pairs. 
 ```
 ghci> zip [1,2,3,4,5] [5,5,5,5,5]  
[(1,5),(2,5),(3,5),(4,5),(5,5)]  
ghci> zip [1 .. 5] ["one", "two", "three", "four", "five"]  
[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]  
```
It pairs up the elements and produces a new list. The first element goes with the first, the second with the second, etc. Notice that because pairs can have different types in them, zip can take two lists that contain different types and zip them up. What happens if the lengths of the lists don't match?
```
ghci> zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]  
[(5,"im"),(3,"a"),(2,"turtle")]  
```
The longer list simply gets cut off to match the length of the shorter one. Because Haskell is lazy, we can zip finite lists with infinite lists:
```
ghci> zip [1..] ["apple", "orange", "cherry", "mango"]  
[(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")]  
```