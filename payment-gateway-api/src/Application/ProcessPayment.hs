module Application.ProcessPayment
  ( processPayment
  ) where

import Domain.User
import Domain.Payment
import Domain.Errors

processPayment
  :: Maybe User
  -> Amount
  -> Either DomainError Payment
processPayment maybeUser amount = do
  user <- case maybeUser of
    Nothing   -> Left UserNotFound
    Just u    -> Right u

  if isActive user
     then Right ()
     else Left UserInactive


  Left PaymentGatewayError
