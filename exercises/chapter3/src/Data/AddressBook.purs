module Data.AddressBook where

import Prelude

import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.Maybe (Maybe)

add :: Int -> Int -> Int
add x y = x + y

type Address =
  { street :: String
  , city   :: String
  , state  :: String
  }

type Entry =
  { firstName :: String
  , lastName :: String
  , address :: Address=
  }


type AddressBook = List Entry


showAddress :: Address -> String
showAddress addr = addr.street <> ", " <>
                   addr.city <> ", " <>
                   addr.state

showEntry :: Entry -> String

showEntry entry = entry.lastName <> ", " <>
                  entry.firstName <> ": " <>
                    showAddress entry.address


emptyBook :: AddressBook
emptyBook = empty

insertEntry :: Entry -> AddressBook -> AddressBook

--insertEntry entry book = Cons entry book
insertEntry Cons
--This process is called eta conversion

