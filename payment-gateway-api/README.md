# Payment Gateway API (Haskell Study Project)

## Overview

This project is a **study-oriented payment gateway backend API** written in **Haskell**, focused on learning **real functional programming**, strong domain modeling, and explicit effect management.

The goal is not to build a production-ready payment system, but to practice **functional architecture patterns**

---

## Goals

* Learn Haskell through a realistic backend use case
* Model business rules using **strong types**
* Handle errors with `Either` and `Maybe` (no exceptions)
* Separate **domain**, **application**, and **infrastructure** layers
* Understand and apply `ReaderT`, `IO`, and monadic composition

---

## Core Concepts Practiced

* Immutability
* Domain modeling with `newtype` and `data`
* Functional pipelines instead of large `if/else` blocks
* Explicit and typed error handling
* Pure business logic, isolated from infrastructure

---

## Tech Stack

* **Haskell (GHC)**
* **Stack** for build and dependency management
* **Aeson** for JSON
* **Servant** for HTTP API
* **mtl** for effect control
* **hspec** and **QuickCheck** for testing