-- Low-level Machine with configurations (c,e,s) where:
    -- c is a list of instructions or code to be executed
    -- e is the evaluation stack
    -- s is the storage

-- Use the evaluation stack to evaluate arithmetic (composed of integer numbers only, which can be positive or negative) and boolean expressions.

-- The Machine instructions are:
    -- push-n
    -- add
    -- mult
    -- sub
    -- true
    -- false
    -- eq
    -- le
    -- and
    -- neg
    -- fetch-x
    -- store-x
    -- noop
    -- branch(c1, c2)
    -- loop(c1, c2)

-- Basic Arithmetic and Boolean Operations:
    -- add, mult, sub → these operations add, multiply and subtract the top two integer values of the stack, and push the result onto the top of the stack
        -- In particular, sub, subtracts the topmost element of the stack with the second topmost element
    
    -- eq, le → compare the two values of the stack for equality and inequality, respectively, and push a boolean with the comparison result onto the top of the stack
        -- eq can compare both integers and booleans
        -- le only works for integers

        -- In particular, le determines whether the topmost stack element is less or equal to the second topmost element

-- add function: takes 2 integers and returns 1 integer, i.e., the sum of the two parameters
add :: Integer -> Integer -> Integer        -- function declaration
add x y = x + y                             -- function definition


-- mult function : takes 2 integers and returns 1 integer, i.e., the multiplication of the two parameters
mult :: Integer -> Integer -> Integer        -- function declaration
mult x y = x * y                             -- function definition

-- sub function : takes 2 integers and returns 1 integer, i.e., the subtraction of the two parameters
sub :: Integer -> Integer -> Integer        -- function declaration
sub x y = x - y                             -- function definition

-- How to Call functions:
    -- e.g., print(add 2 5)

