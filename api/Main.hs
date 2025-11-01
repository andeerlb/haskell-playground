{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Aeson (ToJSON)
import GHC.Generics (Generic)
import Network.Wai (Application)
import Network.Wai.Handler.Warp (run)
import Servant

data User = User
  { userId   :: Int
  , userName :: String
  } deriving (Show, Generic)

instance ToJSON User

type API = "users" :> Get '[JSON] [User]

server :: Server API
server = return
  [ User 1 "Anderson"
  , User 2 "Lucas"
  , User 3 "Thiago"
  ]

app :: Application
app = serve (Proxy :: Proxy API) server

main :: IO ()
main = do
  putStrLn "running on http://localhost:8080"
  run 8080 app
