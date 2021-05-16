-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSendLocation
module TgBotAPI.Operations.PostSendLocation where

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

-- | > POST /sendLocation
-- 
-- Use this method to send point on the map. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendLocation :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendLocationResponse) -- ^ Monadic computation which returns the result of the operation
postSendLocation body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   PostSendLocationResponseBody200)
                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendLocation.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendLocationRequestBody = PostSendLocationRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  postSendLocationRequestBodyAllowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , postSendLocationRequestBodyChatId :: PostSendLocationRequestBodyChatIdVariants
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , postSendLocationRequestBodyDisableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | heading: For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  , postSendLocationRequestBodyHeading :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | horizontal_accuracy: The radius of uncertainty for the location, measured in meters; 0-1500
  , postSendLocationRequestBodyHorizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | latitude: Latitude of the location
  , postSendLocationRequestBodyLatitude :: GHC.Types.Double
  -- | live_period: Period in seconds for which the location will be updated (see [Live Locations](https:\/\/telegram.org\/blog\/live-locations), should be between 60 and 86400.
  , postSendLocationRequestBodyLivePeriod :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | longitude: Longitude of the location
  , postSendLocationRequestBodyLongitude :: GHC.Types.Double
  -- | proximity_alert_radius: For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , postSendLocationRequestBodyProximityAlertRadius :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reply_markup: Additional interface options. A JSON-serialized object for an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\/\/core.telegram.org\/bots\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
  , postSendLocationRequestBodyReplyMarkup :: (GHC.Maybe.Maybe PostSendLocationRequestBodyReplyMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , postSendLocationRequestBodyReplyToMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendLocationRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyAllowSendingWithoutReply obj : "chat_id" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyChatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyDisableNotification obj : "heading" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyHeading obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyHorizontalAccuracy obj : "latitude" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyLatitude obj : "live_period" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyLivePeriod obj : "longitude" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyLongitude obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyProximityAlertRadius obj : "reply_markup" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyToMessageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyAllowSendingWithoutReply obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyChatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyDisableNotification obj) GHC.Base.<> (("heading" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyHeading obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyHorizontalAccuracy obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyLatitude obj) GHC.Base.<> (("live_period" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyLivePeriod obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyLongitude obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyProximityAlertRadius obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkup obj) GHC.Base.<> ("reply_to_message_id" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyToMessageId obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendLocationRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendLocationRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSendLocationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "live_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id"))
-- | Create a new 'PostSendLocationRequestBody' with all required fields.
mkPostSendLocationRequestBody :: PostSendLocationRequestBodyChatIdVariants -- ^ 'postSendLocationRequestBodyChatId'
  -> GHC.Types.Double -- ^ 'postSendLocationRequestBodyLatitude'
  -> GHC.Types.Double -- ^ 'postSendLocationRequestBodyLongitude'
  -> PostSendLocationRequestBody
mkPostSendLocationRequestBody postSendLocationRequestBodyChatId postSendLocationRequestBodyLatitude postSendLocationRequestBodyLongitude = PostSendLocationRequestBody{postSendLocationRequestBodyAllowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyChatId = postSendLocationRequestBodyChatId,
                                                                                                                                                                       postSendLocationRequestBodyDisableNotification = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyHeading = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyHorizontalAccuracy = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyLatitude = postSendLocationRequestBodyLatitude,
                                                                                                                                                                       postSendLocationRequestBodyLivePeriod = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyLongitude = postSendLocationRequestBodyLongitude,
                                                                                                                                                                       postSendLocationRequestBodyProximityAlertRadius = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                       postSendLocationRequestBodyReplyToMessageId = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/sendLocation.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostSendLocationRequestBodyChatIdVariants =
   PostSendLocationRequestBodyChatIdInt GHC.Types.Int
  | PostSendLocationRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendLocationRequestBodyChatIdVariants
    where toJSON (PostSendLocationRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostSendLocationRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostSendLocationRequestBodyChatIdVariants
    where parseJSON val = case (PostSendLocationRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostSendLocationRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/sendLocation.POST.requestBody.content.application\/json.schema.properties.reply_markup.anyOf@ in the specification.
-- 
-- Additional interface options. A JSON-serialized object for an [inline keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
data PostSendLocationRequestBodyReplyMarkup = PostSendLocationRequestBodyReplyMarkup {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  postSendLocationRequestBodyReplyMarkupForceReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  , postSendLocationRequestBodyReplyMarkupInlineKeyboard :: (GHC.Maybe.Maybe ([[InlineKeyboardButton]]))
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  , postSendLocationRequestBodyReplyMarkupKeyboard :: (GHC.Maybe.Maybe ([[KeyboardButton]]))
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , postSendLocationRequestBodyReplyMarkupOneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  , postSendLocationRequestBodyReplyMarkupRemoveKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , postSendLocationRequestBodyReplyMarkupResizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , postSendLocationRequestBodyReplyMarkupSelective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendLocationRequestBodyReplyMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupForceReply obj : "inline_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupInlineKeyboard obj : "keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupKeyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupOneTimeKeyboard obj : "remove_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupRemoveKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupResizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupSelective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupForceReply obj) GHC.Base.<> (("inline_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupInlineKeyboard obj) GHC.Base.<> (("keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupKeyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupOneTimeKeyboard obj) GHC.Base.<> (("remove_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupRemoveKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupResizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= postSendLocationRequestBodyReplyMarkupSelective obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendLocationRequestBodyReplyMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendLocationRequestBodyReplyMarkup" (\obj -> ((((((GHC.Base.pure PostSendLocationRequestBodyReplyMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'PostSendLocationRequestBodyReplyMarkup' with all required fields.
mkPostSendLocationRequestBodyReplyMarkup :: PostSendLocationRequestBodyReplyMarkup
mkPostSendLocationRequestBodyReplyMarkup = PostSendLocationRequestBodyReplyMarkup{postSendLocationRequestBodyReplyMarkupForceReply = GHC.Maybe.Nothing,
                                                                                  postSendLocationRequestBodyReplyMarkupInlineKeyboard = GHC.Maybe.Nothing,
                                                                                  postSendLocationRequestBodyReplyMarkupKeyboard = GHC.Maybe.Nothing,
                                                                                  postSendLocationRequestBodyReplyMarkupOneTimeKeyboard = GHC.Maybe.Nothing,
                                                                                  postSendLocationRequestBodyReplyMarkupRemoveKeyboard = GHC.Maybe.Nothing,
                                                                                  postSendLocationRequestBodyReplyMarkupResizeKeyboard = GHC.Maybe.Nothing,
                                                                                  postSendLocationRequestBodyReplyMarkupSelective = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postSendLocation'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendLocationResponseError' is used.
data PostSendLocationResponse =
   PostSendLocationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendLocationResponse200 PostSendLocationResponseBody200 -- ^ 
  | PostSendLocationResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendLocation.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendLocationResponseBody200 = PostSendLocationResponseBody200 {
  -- | ok
  postSendLocationResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , postSendLocationResponseBody200Result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendLocationResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postSendLocationResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postSendLocationResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postSendLocationResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postSendLocationResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendLocationResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendLocationResponseBody200" (\obj -> (GHC.Base.pure PostSendLocationResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendLocationResponseBody200' with all required fields.
mkPostSendLocationResponseBody200 :: GHC.Types.Bool -- ^ 'postSendLocationResponseBody200Ok'
  -> Message -- ^ 'postSendLocationResponseBody200Result'
  -> PostSendLocationResponseBody200
mkPostSendLocationResponseBody200 postSendLocationResponseBody200Ok postSendLocationResponseBody200Result = PostSendLocationResponseBody200{postSendLocationResponseBody200Ok = postSendLocationResponseBody200Ok,
                                                                                                                                            postSendLocationResponseBody200Result = postSendLocationResponseBody200Result}
-- | > POST /sendLocation
-- 
-- The same as 'postSendLocation' but accepts an explicit configuration.
postSendLocationWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSendLocationResponse) -- ^ Monadic computation which returns the result of the operation
postSendLocationWithConfiguration config
                                  body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    PostSendLocationResponseBody200)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendLocation
-- 
-- The same as 'postSendLocation' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendLocationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendLocationRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendLocation
-- 
-- The same as 'postSendLocation' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendLocationWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendLocationWithConfigurationRaw config
                                     body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
