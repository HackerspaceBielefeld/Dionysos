{-# LANGUAGE OverloadedStrings #-}
module Recipe
  ( Recipe
  , Ingredient
  , Description
  , Tag
  , Name
  , Instructions
  ) where

import           Data.ByteString
import           Data.Quantities
import           Yesod.Markdown

data Recipe = Recipe
  { title        :: Name
  , description  :: Maybe Description
  , tags         :: [Tag]
  , ingredients  :: [Ingredient]
  , instructions :: Instructions
  , xms          :: Integer
  }

data Ingredient = Ingredient
  { amount :: Quantity Float
  , name   :: Name
  }

type Description = ByteString
type Tag = ByteString
type Name = ByteString
type Instructions = Markdown
