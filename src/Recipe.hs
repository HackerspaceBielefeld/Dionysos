{-# LANGUAGE OverloadedStrings #-}
module Recipe
  ( Recipe
  , Ingredient
  , Description
  , Tag
  , Name
  , Instructions
  ) where

import           Data.Text
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

type Description = Text
type Tag = Text
type Name = Text
type Instructions = Markdown
