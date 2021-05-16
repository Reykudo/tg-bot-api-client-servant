-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InputTextMessageContent
module TgBotAPI.Types.InputTextMessageContent where

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
import qualified Data.Bifunctor
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import {-# SOURCE #-} TgBotAPI.Types.MessageEntity

-- | Defines the object schema located at @components.schemas.InputTextMessageContent@ in the specification.
-- 
-- Represents the [content](https:\/\/core.telegram.org\/bots\/api\/\#inputmessagecontent) of a text message to be sent as the result of an inline query.
data InputTextMessageContent = InputTextMessageContent {
  -- | disable_web_page_preview: *Optional*. Disables link previews for links in the sent message
  inputTextMessageContentDisableWebPagePreview :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | entities: *Optional*. List of special entities that appear in message text, which can be specified instead of *parse\\_mode*
  , inputTextMessageContentEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | message_text: Text of the message to be sent, 1-4096 characters
  , inputTextMessageContentMessageText :: Data.Text.Internal.Text
  -- | parse_mode: *Optional*. Mode for parsing entities in the message text. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inputTextMessageContentParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InputTextMessageContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("disable_web_page_preview" Data.Aeson.Types.ToJSON..= inputTextMessageContentDisableWebPagePreview obj : "entities" Data.Aeson.Types.ToJSON..= inputTextMessageContentEntities obj : "message_text" Data.Aeson.Types.ToJSON..= inputTextMessageContentMessageText obj : "parse_mode" Data.Aeson.Types.ToJSON..= inputTextMessageContentParseMode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("disable_web_page_preview" Data.Aeson.Types.ToJSON..= inputTextMessageContentDisableWebPagePreview obj) GHC.Base.<> (("entities" Data.Aeson.Types.ToJSON..= inputTextMessageContentEntities obj) GHC.Base.<> (("message_text" Data.Aeson.Types.ToJSON..= inputTextMessageContentMessageText obj) GHC.Base.<> ("parse_mode" Data.Aeson.Types.ToJSON..= inputTextMessageContentParseMode obj))))
instance Data.Aeson.Types.FromJSON.FromJSON InputTextMessageContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InputTextMessageContent" (\obj -> (((GHC.Base.pure InputTextMessageContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_web_page_preview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode"))
-- | Create a new 'InputTextMessageContent' with all required fields.
mkInputTextMessageContent :: Data.Text.Internal.Text -- ^ 'inputTextMessageContentMessageText'
  -> InputTextMessageContent
mkInputTextMessageContent inputTextMessageContentMessageText = InputTextMessageContent{inputTextMessageContentDisableWebPagePreview = GHC.Maybe.Nothing,
                                                                                       inputTextMessageContentEntities = GHC.Maybe.Nothing,
                                                                                       inputTextMessageContentMessageText = inputTextMessageContentMessageText,
                                                                                       inputTextMessageContentParseMode = GHC.Maybe.Nothing}
