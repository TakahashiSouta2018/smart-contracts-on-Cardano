module Main where

import System.IO (hFlush, stdout)

data Move = Rock | Paper | Scissors deriving (Show, Eq)
data Result = Win | Lose | Draw deriving (Show)

-- Pure logic: player vs computer move
play :: Move -> Move -> Result
play Rock Scissors     = Win
play Rock Paper        = Lose
play Paper Rock        = Win
play Paper Scissors    = Lose
play Scissors Paper    = Win
play Scissors Rock     = Lose
play _ _               = Draw

-- Parse input string
parseMove :: String -> Maybe Move
parseMove "rock"     = Just Rock
parseMove "paper"    = Just Paper
parseMove "scissors" = Just Scissors
parseMove _          = Nothing

main :: IO ()
main = do
  putStrLn "Rock, Paper, Scissors (vs Scissors-only AI)"
  putStrLn "Enter move (rock, paper, scissors) or 'exit':"
  loop

loop :: IO ()
loop = do
  putStr "Your move: "
  hFlush stdout
  input <- getLine
  case input of
    "exit" -> putStrLn "Goodbye!"
    _ -> case parseMove input of
      Just playerMove -> do
        let opponentMove = Scissors  -- deterministic AI
        let result = play playerMove opponentMove
        putStrLn $ "Opponent chose: " ++ show opponentMove
        putStrLn $ "Result: " ++ show result
        loop
      Nothing -> do
        putStrLn "Invalid move. Try 'rock', 'paper', or 'scissors'."
        loop
