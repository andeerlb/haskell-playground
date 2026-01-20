module Domain.User
  ( UserId(..)
  , User(..)
  , UserStatus(..)
  , isActive
  ) where

import Data.Text (Text)

newtype UserId = -- newtype is used to create a distinct type from an existing type. In this case, UserId wraps a Text value to represent user identifiers.
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

isActive :: User -> Bool -- Function to check if a user is active, :: is the type annotation operator in Haskell, used to specify the type of a function or value.
isActive user = -- user is the input parameter of type User
  userStatus user == Active -- Checks if the user's status is Active, userStatus is a field accessor function that retrieves the userStatus field from the User record.
