module Domain.Payment
  ( PaymentId(..)
  , Amount(..)
  , PaymentMethod(..)
  , Payment(..)
  , mkAmount -- exporting the smart constructor
  ) where

import Data.UUID (UUID)
import Domain.Errors

-- newtype is used to create a distinct type from an existing type.
-- Here, PaymentId wraps a UUID to represent a unique identifier for payments.
newtype PaymentId =
  PaymentId UUID
  deriving (Show, Eq)

newtype Amount =
  Amount Double
  deriving (Show, Eq)

data PaymentMethod
  = CreditCard
  | BankTransfer
  | Check
  deriving (Show, Eq)

data Payment = Payment
  { paymentId     :: PaymentId
  , paymentUserId :: UUID
  , paymentAmount :: Amount
  , paymentMethod :: PaymentMethod
  } deriving (Show, Eq) -- { .. } syntax is used for record syntax in Haskell, allowing named fields. Similar to structs in other languages.

-- Smart constructor for Amount to ensure it's positive
mkAmount :: Double -> Either DomainError Amount -- returns Either an error or a valid Amount, Either is used for computations that can fail, with Left representing failure and Right representing success.
-- :: is the type annotation operator in Haskell, used to specify the type of a function or value.
mkAmount value -- value is the input parameter of type Double
  | value > 0 = Right (Amount value) -- Right constructor indicates success, Right is needed to wrap the successful result
  | otherwise = Left InvalidAmount -- Left constructor indicates failure with a DomainError, Left is used to wrap the error value
