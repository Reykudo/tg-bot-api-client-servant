-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema VoiceChatScheduled
module TgBotAPI.Types.VoiceChatScheduled where

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

-- | Defines the object schema located at @components.schemas.VoiceChatScheduled@ in the specification.
-- 
-- This object represents a service message about a voice chat scheduled in the chat.
data VoiceChatScheduled = VoiceChatScheduled {
  -- | start_date: Point in time (Unix timestamp) when the voice chat is supposed to be started by a chat administrator
  voiceChatScheduledStartDate :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON VoiceChatScheduled
    where toJSON obj = Data.Aeson.Types.Internal.object ("start_date" Data.Aeson.Types.ToJSON..= voiceChatScheduledStartDate obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("start_date" Data.Aeson.Types.ToJSON..= voiceChatScheduledStartDate obj)
instance Data.Aeson.Types.FromJSON.FromJSON VoiceChatScheduled
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "VoiceChatScheduled" (\obj -> GHC.Base.pure VoiceChatScheduled GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_date"))
-- | Create a new 'VoiceChatScheduled' with all required fields.
mkVoiceChatScheduled :: GHC.Types.Int -- ^ 'voiceChatScheduledStartDate'
  -> VoiceChatScheduled
mkVoiceChatScheduled voiceChatScheduledStartDate = VoiceChatScheduled{voiceChatScheduledStartDate = voiceChatScheduledStartDate}
