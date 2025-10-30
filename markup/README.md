## data declartions in haskell
haskell can be represent data precisely and succinctly  
looks like this
```
data <Type-name> <type-args>
  = <Data-constructor1> <types>
  | <Data-constructor2> <types>
  | ...
```
it looks really similar to newtype, but there are two important differences

1. In the `<types>` part, we can write many types (Like Int, String, or boot). For `newtype`, we can only write one.
2. We can have alternative structures using `|`, `newtype` have no alternatives.  

this is because `newtype` is used to provide type-safe alias, and data is used to build a new composite type that can potentially have alternatives.