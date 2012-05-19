module Fibonacci where

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-1)

printFib :: Integer -> IO()
printFib x = putStrLn ( show ( fib x ) )

main = printFib 7
