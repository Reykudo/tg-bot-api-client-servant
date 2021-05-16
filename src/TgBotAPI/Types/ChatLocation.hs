-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatLocation
module TgBotAPI.Types.ChatLocation where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import {-# SOURCE #-} TgBotAPI.Types.Location

-- | Defines the object schema located at @components.schemas.ChatLocation@ in the specification.
-- 
-- Represents a location to which a chat is connected.
data ChatLocation = ChatLocation {
  -- | address: Location address; 1-64 characters, as defined by the chat owner
  chatLocationAddress :: Data.Text.Internal.Text
  -- | location: This object represents a point on the map.
  , chatLocationLocation :: Location
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatLocation
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= chatLocationAddress obj : "location" Data.Aeson.Types.ToJSON..= chatLocationLocation obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= chatLocationAddress obj) GHC.Base.<> ("location" Data.Aeson.Types.ToJSON..= chatLocationLocation obj))
instance Data.Aeson.Types.FromJSON.FromJSON ChatLocation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatLocation" (\obj -> (GHC.Base.pure ChatLocation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "location"))
-- | Create a new 'ChatLocation' with all required fields.
mkChatLocation :: Data.Text.Internal.Text -- ^ 'chatLocationAddress'
  -> Location -- ^ 'chatLocationLocation'
  -> ChatLocation
mkChatLocation chatLocationAddress chatLocationLocation = ChatLocation{chatLocationAddress = chatLocationAddress,
                                                                       chatLocationLocation = chatLocationLocation}
