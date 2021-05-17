-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema PollAnswer
module TgBotAPI.Types.PollAnswer where

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
import  {-# SOURCE #-}  TgBotAPI.Types.User (User)

-- | Defines the object schema located at @components.schemas.PollAnswer@ in the specification.
-- 
-- This object represents an answer of a user in a non-anonymous poll.
data PollAnswer = PollAnswer {
  -- | option_ids: 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
  optionIds :: ([GHC.Types.Int])
  -- | poll_id: Unique poll identifier
  , pollId :: Data.Text.Internal.Text
  -- | user: This object represents a Telegram user or bot.
  , user :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PollAnswer
    where toJSON obj = Data.Aeson.Types.Internal.object ("option_ids" Data.Aeson.Types.ToJSON..= optionIds obj : "poll_id" Data.Aeson.Types.ToJSON..= pollId obj : "user" Data.Aeson.Types.ToJSON..= user obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("option_ids" Data.Aeson.Types.ToJSON..= optionIds obj) GHC.Base.<> (("poll_id" Data.Aeson.Types.ToJSON..= pollId obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= user obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PollAnswer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PollAnswer" (\obj -> ((GHC.Base.pure PollAnswer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "option_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "poll_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))
-- | Create a new 'PollAnswer' with all required fields.
mkPollAnswer :: [GHC.Types.Int] -- ^ 'optionIds'
  -> Data.Text.Internal.Text -- ^ 'pollId'
  -> User -- ^ 'user'
  -> PollAnswer
mkPollAnswer optionIds pollId user = PollAnswer{optionIds = optionIds,
                                                pollId = pollId,
                                                user = user}
