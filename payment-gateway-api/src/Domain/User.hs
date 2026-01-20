module Domain.User
  ( UserId(..)
  , User(..)
  , UserStatus(..)
  , isActive
  ) where

import Data.Text (Text)

newtype UserId =
  UserId Text
  deriving (Show, Eq)

data UserStatus
  = Active
  | Inactive
  deriving (Show, Eq)

data User = User
  { userId     :: UserId
  , userName   :: Text
  , userStatus :: UserStatus
  } deriving (Show, Eq)

isActive :: User -> Bool
isActive user =
  userStatus user == Active
