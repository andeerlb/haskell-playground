# How should I use it?
In Haskell, the where clause is used to define local bindings (helper functions, constants, or pattern matches) that are available to the expression above it.
It improves readability and avoids repeating code.

```
sumSquares :: Int -> Int -> Int
sumSquares x y = square x + square y
  where
    square n = n * n
```
`where` defines `square` locally — it’s only visible inside `sumSquares`.

```
foo :: Int -> Int
foo x = a + b + square x
  where
    a = 10
    b = 20
    square n = n * n
```
Multiple definitions

```
describe :: (Int, Int) -> String
describe pair = message
  where
    (x, y) = pair
    message = "x = " ++ show x ++ ", y = " ++ show y
```
Pattern matching inside `where`

```
classify :: Int -> String
classify n
  | n < average  = "Below"
  | n == average = "Equal"
  | otherwise    = "Above"
  where
    average = 5
```
`where` applies to all guard conditions.


# where vs let … in
* `where` appears at the end of a function definition.
* `let … in` appears before the expression it applies to and is more local.
```
# Example using let
result = let a = 10; b = 20 in a + b

# Example using where
result :: Int
result = a + b
  where
    a = 10
    b = 20
```