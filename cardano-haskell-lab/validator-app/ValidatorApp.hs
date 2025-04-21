-- ValidatorApp.hs

module Main where

import System.IO (hFlush, stdout)

-- User roles for minting permission
data Role = Admin | Minter | Viewer deriving (Show, Eq)

data User = User
  { username :: String
  , role     :: Role
  } deriving (Show)

-- Simple validator: only Admin or Minter can mint
canMint :: User -> Bool
canMint (User _ Admin)  = True
canMint (User _ Minter) = True
canMint _               = False

-- Parse role from user input
parseRole :: String -> Maybe Role
parseRole input = case input of
  "admin"  -> Just Admin
  "minter" -> Just Minter
  "viewer" -> Just Viewer
  _        -> Nothing

-- CLI loop for input and validation
main :: IO ()
main = do
  putStrLn "=== Validator App ==="
  putStrLn "Simulating mint permission check.\n"
  putStrLn "Enter username:"
  putStr " > "
  hFlush stdout
  uname <- getLine
  putStrLn "Enter role (admin, minter, viewer):"
  putStr " > "
  hFlush stdout
  rinput <- getLine
  case parseRole rinput of
    Just r -> do
      let user = User uname r
      putStrLn $ "\nUser: " ++ show user
      if canMint user
        then putStrLn "✅ Validation passed: User can mint."
        else putStrLn "❌ Validation failed: User not authorized."
    Nothing -> putStrLn "⚠️ Invalid role. Try 'admin', 'minter', or 'viewer'."
