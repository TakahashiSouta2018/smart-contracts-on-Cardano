module Main where

import System.IO (hFlush, stdout)

type Counter = Int

data Command = Increment | Reset | ShowCounter | Exit | Unknown
  deriving (Eq, Show)

parseCommand :: String -> Command
parseCommand input = case input of
  "increment" -> Increment
  "reset"     -> Reset
  "show"      -> ShowCounter
  "exit"      -> Exit
  _           -> Unknown

loop :: Counter -> IO ()
loop counter = do
  putStr "Enter command (increment, reset, show, exit): "
  hFlush stdout
  input <- getLine
  case parseCommand input of
    Increment -> do
      let newCounter = counter + 1
      putStrLn $ "Counter incremented to: " ++ show newCounter
      loop newCounter
    Reset -> do
      putStrLn "Counter reset to 0"
      loop 0
    ShowCounter -> do
      putStrLn $ "Current counter: " ++ show counter
      loop counter
    Exit -> putStrLn "Exiting counter-app. Goodbye!"
    Unknown -> do
      putStrLn "Unknown command."
      loop counter

main :: IO ()
main = do
  putStrLn "Counter App (UTXO-style simulation)"
  loop 0
