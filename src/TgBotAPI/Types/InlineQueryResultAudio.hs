-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultAudio
module TgBotAPI.Types.InlineQueryResultAudio where

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
import {-# SOURCE #-} TgBotAPI.Types.InlineKeyboardMarkup
import {-# SOURCE #-} TgBotAPI.Types.InputMessageContent
import {-# SOURCE #-} TgBotAPI.Types.MessageEntity

-- | Defines the object schema located at @components.schemas.InlineQueryResultAudio@ in the specification.
-- 
-- Represents a link to an MP3 audio file. By default, this audio file will be sent by the user. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the audio.
data InlineQueryResultAudio = InlineQueryResultAudio {
  -- | audio_duration: *Optional*. Audio duration in seconds
  inlineQueryResultAudioAudioDuration :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | audio_url: A valid URL for the audio file
  , inlineQueryResultAudioAudioUrl :: Data.Text.Internal.Text
  -- | caption: *Optional*. Caption, 0-1024 characters after entities parsing
  , inlineQueryResultAudioCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , inlineQueryResultAudioCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | id: Unique identifier for this result, 1-64 bytes
  , inlineQueryResultAudioId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultAudioInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the audio caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inlineQueryResultAudioParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | performer: *Optional*. Performer
  , inlineQueryResultAudioPerformer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultAudioReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | title: Title
  , inlineQueryResultAudioTitle :: Data.Text.Internal.Text
  -- | type: Type of the result, must be *audio*
  , inlineQueryResultAudioType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultAudio
    where toJSON obj = Data.Aeson.Types.Internal.object ("audio_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioAudioDuration obj : "audio_url" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioAudioUrl obj : "caption" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioCaptionEntities obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioInputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioParseMode obj : "performer" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioPerformer obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioReplyMarkup obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("audio_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioAudioDuration obj) GHC.Base.<> (("audio_url" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioAudioUrl obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioCaptionEntities obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioInputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioParseMode obj) GHC.Base.<> (("performer" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioPerformer obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioReplyMarkup obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioTitle obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioType obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultAudio
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultAudio" (\obj -> ((((((((((GHC.Base.pure InlineQueryResultAudio GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "audio_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultAudio' with all required fields.
mkInlineQueryResultAudio :: Data.Text.Internal.Text -- ^ 'inlineQueryResultAudioAudioUrl'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultAudioId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultAudioTitle'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultAudioType'
  -> InlineQueryResultAudio
mkInlineQueryResultAudio inlineQueryResultAudioAudioUrl inlineQueryResultAudioId inlineQueryResultAudioTitle inlineQueryResultAudioType = InlineQueryResultAudio{inlineQueryResultAudioAudioDuration = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioAudioUrl = inlineQueryResultAudioAudioUrl,
                                                                                                                                                                 inlineQueryResultAudioCaption = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioCaptionEntities = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioId = inlineQueryResultAudioId,
                                                                                                                                                                 inlineQueryResultAudioInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioParseMode = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioPerformer = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                 inlineQueryResultAudioTitle = inlineQueryResultAudioTitle,
                                                                                                                                                                 inlineQueryResultAudioType = inlineQueryResultAudioType}
