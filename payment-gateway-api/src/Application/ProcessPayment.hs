module Application.ProcessPayment
  ( processPayment
  ) where

import Domain.User
import Domain.Payment
import Domain.Errors

processPayment
  :: Maybe User -- Maybe is used to represent an optional value, indicating that the user may or may not be present
  -> Amount -- Amount is the type representing the payment amount
  -> Either DomainError Payment -- Either is used for computations that can fail, with Left representing failure and Right representing success
processPayment maybeUser amount = do -- do notation is used for chaining operations that return monadic values, in this case, Either
  user <- case maybeUser of
    Nothing   -> Left UserNotFound -- Left constructor indicates failure with a DomainError, Nothing represents absence of a value
    Just u    -> Right u -- Right constructor indicates success, Just wraps the present value, Just user extracts the user from the Maybe

  if isActive user -- isActive checks if the user is active
     then Right () -- Proceed with payment processing (placeholder)
     else Left UserInactive -- User is inactive, return an error

  Left PaymentGatewayError -- Placeholder for actual payment processing logic
