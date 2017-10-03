module Domino where
  type Domino = (Int,Int)
  type Hand = [Domino]
  type End = Int

  type Board = [(End,Domino,End)]

    -- add all 28 dominios to a list
  dominoes :: [Domino]

    --use list comprehension to add all dominoes to a list
    --mimics nested for loops.
  dominoes = [(x,y) | x <- [0..6], y <-[0..6]]
      {-
      goesP takes a domino from a players hand compares to the dominos
      at the two ends of the board, if the number on either end of the players
      domino is the same as the number on the domnio at either end of the Board
      then the domino can be played
    -}
    goesP :: Domino -> End -> Bool --take a domino and return a boolean
    goesP (a,b)  =
