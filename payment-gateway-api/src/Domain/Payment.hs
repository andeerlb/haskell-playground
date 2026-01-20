module Domain.Payment
  ( PaymentId(..)
  , Amount(..)
  , PaymentMethod(..)
  , Payment(..)
  , mkAmount
  ) where

import Data.UUID (UUID)
import Domain.Errors

newtype PaymentId =
  PaymentId UUID
  deriving (Show, Eq)

newtype Amount =
  Amount Double
  deriving (Show, Eq)

data PaymentMethod
  = CreditCard
  | Pix
  | Boleto
  deriving (Show, Eq)

data Payment = Payment
  { paymentId     :: PaymentId
  , paymentUserId :: UUID
  , paymentAmount :: Amount
  , paymentMethod :: PaymentMethod
  } deriving (Show, Eq)

mkAmount :: Double -> Either DomainError Amount
mkAmount value
  | value > 0 = Right (Amount value)
  | otherwise = Left InvalidAmount
