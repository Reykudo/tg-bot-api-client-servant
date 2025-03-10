-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postSendContact
module TgBotAPI.Operations.PostSendContact where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified TgBotAPI.Common
import TgBotAPI.Types

-- | > POST /sendContact
-- 
-- Use this method to send phone contacts. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendContact :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendContactRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendContactResponse) -- ^ Monadic computation which returns the result of the operation
postSendContact body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendContactResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendContactResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                PostSendContactResponseBody200)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendContactResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendContact") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendContact.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendContactRequestBody = PostSendContactRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  allowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , chatId :: ChatIdVariants
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , disableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | first_name: Contact\'s first name
  , firstName :: Data.Text.Internal.Text
  -- | last_name: Contact\'s last name
  , lastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone_number: Contact\'s phone number
  , phoneNumber :: Data.Text.Internal.Text
  -- | reply_markup: Additional interface options. A JSON-serialized object for an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\/\/core.telegram.org\/bots\#keyboards), instructions to remove keyboard or to force a reply from the user.
  , replyMarkup :: (GHC.Maybe.Maybe ReplyMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , replyToMessageId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | vcard: Additional data about the contact in the form of a [vCard](https:\/\/en.wikipedia.org\/wiki\/VCard), 0-2048 bytes
  , vcard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendContactRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj : "chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj : "first_name" Data.Aeson.Types.ToJSON..= firstName obj : "last_name" Data.Aeson.Types.ToJSON..= lastName obj : "phone_number" Data.Aeson.Types.ToJSON..= phoneNumber obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj : "vcard" Data.Aeson.Types.ToJSON..= vcard obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj) GHC.Base.<> (("first_name" Data.Aeson.Types.ToJSON..= firstName obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= lastName obj) GHC.Base.<> (("phone_number" Data.Aeson.Types.ToJSON..= phoneNumber obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj) GHC.Base.<> ("vcard" Data.Aeson.Types.ToJSON..= vcard obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendContactRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendContactRequestBody" (\obj -> ((((((((GHC.Base.pure PostSendContactRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vcard"))
-- | Create a new 'PostSendContactRequestBody' with all required fields.
mkPostSendContactRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> Data.Text.Internal.Text -- ^ 'firstName'
  -> Data.Text.Internal.Text -- ^ 'phoneNumber'
  -> PostSendContactRequestBody
mkPostSendContactRequestBody chatId firstName phoneNumber = PostSendContactRequestBody{allowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                       chatId = chatId,
                                                                                       disableNotification = GHC.Maybe.Nothing,
                                                                                       firstName = firstName,
                                                                                       lastName = GHC.Maybe.Nothing,
                                                                                       phoneNumber = phoneNumber,
                                                                                       replyMarkup = GHC.Maybe.Nothing,
                                                                                       replyToMessageId = GHC.Maybe.Nothing,
                                                                                       vcard = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/sendContact.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data ChatIdVariants =
   ChatIdInt GHC.Int.Int64
  | ChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatIdVariants
    where toJSON (ChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ChatIdVariants
    where parseJSON val = case (ChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/sendContact.POST.requestBody.content.application\/json.schema.properties.reply_markup.anyOf@ in the specification.
-- 
-- Additional interface options. A JSON-serialized object for an [inline keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#keyboards), instructions to remove keyboard or to force a reply from the user.
data ReplyMarkup = ReplyMarkup {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  forceReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  , inlineKeyboard :: (GHC.Maybe.Maybe ([[InlineKeyboardButton]]))
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  , keyboard :: (GHC.Maybe.Maybe ([[KeyboardButton]]))
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , oneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  , removeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , resizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , selective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReplyMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj : "inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboard obj : "keyboard" Data.Aeson.Types.ToJSON..= keyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= oneTimeKeyboard obj : "remove_keyboard" Data.Aeson.Types.ToJSON..= removeKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= resizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= selective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj) GHC.Base.<> (("inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboard obj) GHC.Base.<> (("keyboard" Data.Aeson.Types.ToJSON..= keyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= oneTimeKeyboard obj) GHC.Base.<> (("remove_keyboard" Data.Aeson.Types.ToJSON..= removeKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= resizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= selective obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON ReplyMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReplyMarkup" (\obj -> ((((((GHC.Base.pure ReplyMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'ReplyMarkup' with all required fields.
mkReplyMarkup :: ReplyMarkup
mkReplyMarkup = ReplyMarkup{forceReply = GHC.Maybe.Nothing,
                            inlineKeyboard = GHC.Maybe.Nothing,
                            keyboard = GHC.Maybe.Nothing,
                            oneTimeKeyboard = GHC.Maybe.Nothing,
                            removeKeyboard = GHC.Maybe.Nothing,
                            resizeKeyboard = GHC.Maybe.Nothing,
                            selective = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postSendContact'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendContactResponseError' is used.
data PostSendContactResponse =
   PostSendContactResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendContactResponse200 PostSendContactResponseBody200 -- ^ 
  | PostSendContactResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendContact.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendContactResponseBody200 = PostSendContactResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendContactResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendContactResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendContactResponseBody200" (\obj -> (GHC.Base.pure PostSendContactResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendContactResponseBody200' with all required fields.
mkPostSendContactResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Message -- ^ 'result'
  -> PostSendContactResponseBody200
mkPostSendContactResponseBody200 ok result = PostSendContactResponseBody200{ok = ok,
                                                                            result = result}
-- | > POST /sendContact
-- 
-- The same as 'postSendContact' but accepts an explicit configuration.
postSendContactWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendContactRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSendContactResponse) -- ^ Monadic computation which returns the result of the operation
postSendContactWithConfiguration config
                                 body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendContactResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendContactResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 PostSendContactResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendContactResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendContact") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendContact
-- 
-- The same as 'postSendContact' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendContactRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendContactRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendContactRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendContact") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendContact
-- 
-- The same as 'postSendContact' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendContactWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendContactRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendContactWithConfigurationRaw config
                                    body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendContact") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
