module Domain.Errors
  ( DomainError(..)
  ) where

data DomainError
  = UserNotFound
  | UserInactive
  | InvalidAmount
  | PaymentGatewayError
  deriving (Show, Eq)
