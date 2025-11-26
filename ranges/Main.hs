
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

    print range1
    print range2
    print range3
    print range4
    print range5