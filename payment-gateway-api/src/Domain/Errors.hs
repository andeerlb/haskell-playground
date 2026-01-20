module Domain.Errors
  ( DomainError(..) -- (..) means export all constructors
  ) where -- where clause indicates the start of the module's implementation

-- This module defines domain-specific error types.
-- data is used to represent various error conditions that can occur
-- within the domain logic of the application.
-- The DomainError type includes constructors for different error scenarios.
-- data in haskell is used to define new data types.
data DomainError
  = UserNotFound
  | UserInactive
  | InvalidAmount
  | PaymentGatewayError
  deriving (Show, Eq) -- deriving Show and Eq for easy debugging and comparison (Show allows printing, Eq allows equality checks)
