
main :: IO ()
main = do
    let range1 = [1..10]               -- List of integers from 1 to 10
    let range2 = ['a'..'z']            -- List of lowercase letters from 'a' to 'z'
    let range3 = [10,20..100]          -- List of integers from 10 to 100 with a step of 10
    let range4 = [1.0,1.5..5.0]        -- List of floating-point numbers from 1.0 to 5.0 with a step of 0.5
    let range5 = [3,6,9,12,15,18]      -- List defined with explicit elements
    let range6 = [1..]                 -- Infinite list of integers starting from 1
    let range7 = take 10 [1..]               -- Taking first 10 elements from the infinite list
    let range8 = [1,3..20]             -- List of odd numbers from 1 to 20
    let range9 = [20,18..1]            -- List of integers from 20 down to 1
    let range10 = take 5 [0.5,1.0..]        -- Taking first 5 elements from an infinite list of floating-point numbers starting from 0.5
    let range11 = take 7 ['A','C'..]          -- Taking first 7 uppercase letters starting from 'A' with a step of 2
    let range12 = take 12 (cycle [1,2,3])  -- Taking first 12 elements from an infinite cyclic list of [1,2,3]
    let range13 = take 10 (repeat 5)       -- Taking first 10 elements from an infinite list of 5s
    let range14 = replicate 6 "Hello"  -- List with "Hello" repeated 6 times

    print range1
    print range2
    print range3
    print range4
    print range5