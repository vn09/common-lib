{-# LANGUAGE DeriveGeneric #-}

module CommonData
   where

import           Data.Aeson.Types
import           GHC.Generics

-- Data Handler for Group 1
data RepoDataForProcessing = RepoDataForProcessing
    {
        git_url             :: String
      , language            :: [String]
    } deriving (Generic, Show)
instance ToJSON RepoDataForProcessing

-- Data Handler for Group 2
data RepoCommit = RepoCommit
    {
         repo_url                :: String
       , number_of_commit        :: Int
       , last_commit             :: String
    } deriving (Generic, Show)
instance ToJSON RepoCommit

-- Data Handler for Group 3
data RepoInfo = RepoIno
    {
          repo_name   :: String
        , owner       :: String
        , token       :: String
    } deriving (Generic)

instance ToJSON RepoInfo
instance FromJSON RepoInfo
