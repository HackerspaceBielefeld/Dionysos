{-# LANGUAGE OverloadedStrings #-}
module Handler.Cookbook where

import Import

getCookbookR :: Handler Html
getCookbookR = defaultLayout $ do
  setTitle "Cookbook"
