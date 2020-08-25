## Welcome to the world of Julia

Your task is to debug the bugs in Julia implementation of Game of Life at [Julia playground](http://tpcg.io/ogpvl7Jo)
There are atmost 3 bugs in the given program

### Few things to keep in mind about Julia Programming Language:
1. How to print statements ==> println()
2. Are Julia arrays 0 indexed or 1 indexed, well you need to figure that out
3. Array access is different than traditional languages like C++, Python, Java. Look out for that.

## Final Output expected
```
Generation: initial_Gen
8×8 Array{Int64,2}:
 0  0  0  1  1  1  0  0
 0  1  0  1  0  1  1  1
 0  1  0  1  0  1  0  1
 0  1  0  1  0  1  1  1
 0  1  0  1  0  1  0  1
 0  1  0  1  0  1  0  1
 1  1  1  1  1  0  0  0
 1  1  1  1  1  1  1  1
Generation: 1
8×8 Array{Int64,2}:
 0  0  1  1  0  1  0  0
 0  0  0  1  0  0  0  1
 1  1  0  1  0  0  0  0
 1  1  0  1  0  1  0  1
 1  1  0  1  0  1  0  1
 0  0  0  0  0  1  0  0
 0  0  0  0  0  0  0  1
 1  0  0  0  0  1  1  0
Generation: 2
8×8 Array{Int64,2}:
 0  0  1  1  1  0  0  0
 0  1  0  1  0  0  0  0
 1  1  0  1  0  0  1  0
 0  0  0  1  0  0  0  0
 1  1  0  0  0  1  0  0
 0  0  0  0  1  0  0  0
 0  0  0  0  0  1  0  0
 0  0  0  0  0  0  1  0
Generation: 3
8×8 Array{Int64,2}:
 0  0  1  1  1  0  0  0
 1  1  0  0  0  0  0  0
 1  1  0  1  1  0  0  0
 0  0  0  0  1  0  0  0
 0  0  0  0  1  0  0  0
 0  0  0  0  1  1  0  0
 0  0  0  0  0  1  0  0
 0  0  0  0  0  0  0  0
Generation: 4
8×8 Array{Int64,2}:
 0  1  1  1  0  0  0  0
 1  0  0  0  0  0  0  0
 1  1  1  1  1  0  0  0
 0  0  0  0  1  1  0  0
 0  0  0  1  1  0  0  0
 0  0  0  0  1  1  0  0
 0  0  0  0  1  1  0  0
 0  0  0  0  0  0  0  0
Generation: 5
8×8 Array{Int64,2}:
 0  1  1  0  0  0  0  0
 1  0  0  0  1  0  0  0
 1  1  1  1  1  1  0  0
 0  1  0  0  0  1  0  0
 0  0  0  1  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  1  1  0  0
 0  0  0  0  0  0  0  0
Generation: 6
8×8 Array{Int64,2}:
 0  1  0  0  0  0  0  0
 1  0  0  0  1  1  0  0
 1  0  1  1  0  1  0  0
 1  1  0  0  0  1  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  1  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
Generation: 7
8×8 Array{Int64,2}:
 0  0  0  0  0  0  0  0
 1  0  1  1  1  1  0  0
 1  0  1  1  0  1  1  0
 1  1  1  0  1  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
Generation: 8
8×8 Array{Int64,2}:
 0  0  0  1  1  0  0  0
 0  0  1  0  0  1  1  0
 1  0  0  0  0  0  1  0
 1  0  1  0  1  1  0  0
 0  1  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
Generation: 9
8×8 Array{Int64,2}:
 0  0  0  1  1  1  0  0
 0  0  0  1  1  1  1  0
 0  0  0  1  1  0  1  0
 1  0  0  0  0  1  0  0
 0  1  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
Generation: 10
8×8 Array{Int64,2}:
 0  0  0  1  0  0  1  0
 0  0  1  0  0  0  1  0
 0  0  0  1  0  0  1  0
 0  0  0  0  1  1  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0
 0  0  0  0  0  0  0  0

```

