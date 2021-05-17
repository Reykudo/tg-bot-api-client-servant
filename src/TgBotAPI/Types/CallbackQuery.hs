-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema CallbackQuery
module TgBotAPI.Types.CallbackQuery where

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
import  {-# SOURCE #-}  TgBotAPI.Types.Message (Message)
import  {-# SOURCE #-}  TgBotAPI.Types.User (User)

-- | Defines the object schema located at @components.schemas.CallbackQuery@ in the specification.
-- 
-- This object represents an incoming callback query from a callback button in an [inline keyboard](\/bots\#inline-keyboards-and-on-the-fly-updating). If the button that originated the query was attached to a message sent by the bot, the field *message* will be present. If the button was attached to a message sent via the bot (in [inline mode](https:\/\/core.telegram.org\/bots\/api\/\#inline-mode)), the field *inline\\_message\\_id* will be present. Exactly one of the fields *data* or *game\\_short\\_name* will be present.
data CallbackQuery = CallbackQuery {
  -- | chat_instance: Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in [games](https:\/\/core.telegram.org\/bots\/api\/\#games).
  chatInstance :: Data.Text.Internal.Text
  -- | data: *Optional*. Data associated with the callback button. Be aware that a bad client can send arbitrary data in this field.
  , data' :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | from: This object represents a Telegram user or bot.
  , from :: User
  -- | game_short_name: *Optional*. Short name of a [Game](https:\/\/core.telegram.org\/bots\/api\/\#games) to be returned, serves as the unique identifier for the game
  , gameShortName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for this query
  , id :: Data.Text.Internal.Text
  -- | inline_message_id: *Optional*. Identifier of the message sent via the bot in inline mode, that originated the query.
  , inlineMessageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message: This object represents a message.
  , message :: (GHC.Maybe.Maybe Message)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CallbackQuery
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_instance" Data.Aeson.Types.ToJSON..= chatInstance obj : "data" Data.Aeson.Types.ToJSON..= data' obj : "from" Data.Aeson.Types.ToJSON..= from obj : "game_short_name" Data.Aeson.Types.ToJSON..= gameShortName obj : "id" Data.Aeson.Types.ToJSON..= id obj : "inline_message_id" Data.Aeson.Types.ToJSON..= inlineMessageId obj : "message" Data.Aeson.Types.ToJSON..= message obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_instance" Data.Aeson.Types.ToJSON..= chatInstance obj) GHC.Base.<> (("data" Data.Aeson.Types.ToJSON..= data' obj) GHC.Base.<> (("from" Data.Aeson.Types.ToJSON..= from obj) GHC.Base.<> (("game_short_name" Data.Aeson.Types.ToJSON..= gameShortName obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= id obj) GHC.Base.<> (("inline_message_id" Data.Aeson.Types.ToJSON..= inlineMessageId obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= message obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON CallbackQuery
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CallbackQuery" (\obj -> ((((((GHC.Base.pure CallbackQuery GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_instance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "game_short_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message"))
-- | Create a new 'CallbackQuery' with all required fields.
mkCallbackQuery :: Data.Text.Internal.Text -- ^ 'chatInstance'
  -> User -- ^ 'from'
  -> Data.Text.Internal.Text -- ^ 'id'
  -> CallbackQuery
mkCallbackQuery chatInstance from id = CallbackQuery{chatInstance = chatInstance,
                                                     data' = GHC.Maybe.Nothing,
                                                     from = from,
                                                     gameShortName = GHC.Maybe.Nothing,
                                                     id = id,
                                                     inlineMessageId = GHC.Maybe.Nothing,
                                                     message = GHC.Maybe.Nothing}
