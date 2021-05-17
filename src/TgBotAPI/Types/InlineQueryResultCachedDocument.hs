-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema InlineQueryResultCachedDocument
module TgBotAPI.Types.InlineQueryResultCachedDocument where

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
import  {-# SOURCE #-}  TgBotAPI.Types.InlineKeyboardMarkup (InlineKeyboardMarkup)
import  {-# SOURCE #-}  TgBotAPI.Types.InputMessageContent (InputMessageContent)
import  {-# SOURCE #-}  TgBotAPI.Types.MessageEntity (MessageEntity)

-- | Defines the object schema located at @components.schemas.InlineQueryResultCachedDocument@ in the specification.
-- 
-- Represents a link to a file stored on the Telegram servers. By default, this file will be sent by the user with an optional caption. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the file.
data InlineQueryResultCachedDocument = InlineQueryResultCachedDocument {
  -- | caption: *Optional*. Caption of the document to be sent, 0-1024 characters after entities parsing
  caption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , captionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | description: *Optional*. Short description of the result
  , description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | document_file_id: A valid file identifier for the file
  , documentFileId :: Data.Text.Internal.Text
  -- | id: Unique identifier for this result, 1-64 bytes
  , id :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the document caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , parseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | title: Title for the result
  , title :: Data.Text.Internal.Text
  -- | type: Type of the result, must be *document*
  , type' :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultCachedDocument
    where toJSON obj = Data.Aeson.Types.Internal.object ("caption" Data.Aeson.Types.ToJSON..= caption obj : "caption_entities" Data.Aeson.Types.ToJSON..= captionEntities obj : "description" Data.Aeson.Types.ToJSON..= description obj : "document_file_id" Data.Aeson.Types.ToJSON..= documentFileId obj : "id" Data.Aeson.Types.ToJSON..= id obj : "input_message_content" Data.Aeson.Types.ToJSON..= inputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "title" Data.Aeson.Types.ToJSON..= title obj : "type" Data.Aeson.Types.ToJSON..= type' obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("caption" Data.Aeson.Types.ToJSON..= caption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= captionEntities obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("document_file_id" Data.Aeson.Types.ToJSON..= documentFileId obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= id obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= title obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= type' obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultCachedDocument
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultCachedDocument" (\obj -> (((((((((GHC.Base.pure InlineQueryResultCachedDocument GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "document_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultCachedDocument' with all required fields.
mkInlineQueryResultCachedDocument :: Data.Text.Internal.Text -- ^ 'documentFileId'
  -> Data.Text.Internal.Text -- ^ 'id'
  -> Data.Text.Internal.Text -- ^ 'title'
  -> Data.Text.Internal.Text -- ^ 'type''
  -> InlineQueryResultCachedDocument
mkInlineQueryResultCachedDocument documentFileId id title type' = InlineQueryResultCachedDocument{caption = GHC.Maybe.Nothing,
                                                                                                  captionEntities = GHC.Maybe.Nothing,
                                                                                                  description = GHC.Maybe.Nothing,
                                                                                                  documentFileId = documentFileId,
                                                                                                  id = id,
                                                                                                  inputMessageContent = GHC.Maybe.Nothing,
                                                                                                  parseMode = GHC.Maybe.Nothing,
                                                                                                  replyMarkup = GHC.Maybe.Nothing,
                                                                                                  title = title,
                                                                                                  type' = type'}
