-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postEditMessageLiveLocation
module TgBotAPI.Operations.PostEditMessageLiveLocation where

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
import qualified Data.Bifunctor
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

-- | > POST /editMessageLiveLocation
-- 
-- Use this method to edit live location messages. A location can be edited until its *live\\_period* expires or editing is explicitly disabled by a call to [stopMessageLiveLocation](https:\/\/core.telegram.org\/bots\/api\/\#stopmessagelivelocation). On success, if the edited message is not an inline message, the edited [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned, otherwise *True* is returned.
postEditMessageLiveLocation :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostEditMessageLiveLocationResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocation body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostEditMessageLiveLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                                                    PostEditMessageLiveLocationResponseBody200)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/editMessageLiveLocation.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageLiveLocationRequestBody = PostEditMessageLiveLocationRequestBody {
  -- | chat_id: Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postEditMessageLiveLocationRequestBodyChatId :: (GHC.Maybe.Maybe PostEditMessageLiveLocationRequestBodyChatIdVariants)
  -- | heading: Direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  , postEditMessageLiveLocationRequestBodyHeading :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | horizontal_accuracy: The radius of uncertainty for the location, measured in meters; 0-1500
  , postEditMessageLiveLocationRequestBodyHorizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | inline_message_id: Required if *chat\\_id* and *message\\_id* are not specified. Identifier of the inline message
  , postEditMessageLiveLocationRequestBodyInlineMessageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Latitude of new location
  , postEditMessageLiveLocationRequestBodyLatitude :: GHC.Types.Double
  -- | longitude: Longitude of new location
  , postEditMessageLiveLocationRequestBodyLongitude :: GHC.Types.Double
  -- | message_id: Required if *inline\\_message\\_id* is not specified. Identifier of the message to edit
  , postEditMessageLiveLocationRequestBodyMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | proximity_alert_radius: Maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , postEditMessageLiveLocationRequestBodyProximityAlertRadius :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , postEditMessageLiveLocationRequestBodyReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageLiveLocationRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyChatId obj : "heading" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyHeading obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyHorizontalAccuracy obj : "inline_message_id" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyInlineMessageId obj : "latitude" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyLatitude obj : "longitude" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyLongitude obj : "message_id" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyMessageId obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyProximityAlertRadius obj : "reply_markup" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyReplyMarkup obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyChatId obj) GHC.Base.<> (("heading" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyHeading obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyHorizontalAccuracy obj) GHC.Base.<> (("inline_message_id" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyInlineMessageId obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyLatitude obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyLongitude obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyMessageId obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyProximityAlertRadius obj) GHC.Base.<> ("reply_markup" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationRequestBodyReplyMarkup obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageLiveLocationRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageLiveLocationRequestBody" (\obj -> ((((((((GHC.Base.pure PostEditMessageLiveLocationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup"))
-- | Create a new 'PostEditMessageLiveLocationRequestBody' with all required fields.
mkPostEditMessageLiveLocationRequestBody :: GHC.Types.Double -- ^ 'postEditMessageLiveLocationRequestBodyLatitude'
  -> GHC.Types.Double -- ^ 'postEditMessageLiveLocationRequestBodyLongitude'
  -> PostEditMessageLiveLocationRequestBody
mkPostEditMessageLiveLocationRequestBody postEditMessageLiveLocationRequestBodyLatitude postEditMessageLiveLocationRequestBodyLongitude = PostEditMessageLiveLocationRequestBody{postEditMessageLiveLocationRequestBodyChatId = GHC.Maybe.Nothing,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyHeading = GHC.Maybe.Nothing,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyHorizontalAccuracy = GHC.Maybe.Nothing,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyInlineMessageId = GHC.Maybe.Nothing,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyLatitude = postEditMessageLiveLocationRequestBodyLatitude,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyLongitude = postEditMessageLiveLocationRequestBodyLongitude,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyMessageId = GHC.Maybe.Nothing,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyProximityAlertRadius = GHC.Maybe.Nothing,
                                                                                                                                                                                 postEditMessageLiveLocationRequestBodyReplyMarkup = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/editMessageLiveLocation.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostEditMessageLiveLocationRequestBodyChatIdVariants =
   PostEditMessageLiveLocationRequestBodyChatIdInt GHC.Types.Int
  | PostEditMessageLiveLocationRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageLiveLocationRequestBodyChatIdVariants
    where toJSON (PostEditMessageLiveLocationRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostEditMessageLiveLocationRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageLiveLocationRequestBodyChatIdVariants
    where parseJSON val = case (PostEditMessageLiveLocationRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostEditMessageLiveLocationRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postEditMessageLiveLocation'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEditMessageLiveLocationResponseError' is used.
data PostEditMessageLiveLocationResponse =
   PostEditMessageLiveLocationResponseError Data.Text.Text -- ^ Means either no matching case available or a parse error
  | PostEditMessageLiveLocationResponse200 PostEditMessageLiveLocationResponseBody200 -- ^ 
  | PostEditMessageLiveLocationResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/editMessageLiveLocation.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageLiveLocationResponseBody200 = PostEditMessageLiveLocationResponseBody200 {
  -- | ok
  postEditMessageLiveLocationResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postEditMessageLiveLocationResponseBody200Result :: PostEditMessageLiveLocationResponseBody200ResultVariants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageLiveLocationResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postEditMessageLiveLocationResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageLiveLocationResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageLiveLocationResponseBody200" (\obj -> (GHC.Base.pure PostEditMessageLiveLocationResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostEditMessageLiveLocationResponseBody200' with all required fields.
mkPostEditMessageLiveLocationResponseBody200 :: GHC.Types.Bool -- ^ 'postEditMessageLiveLocationResponseBody200Ok'
  -> PostEditMessageLiveLocationResponseBody200ResultVariants -- ^ 'postEditMessageLiveLocationResponseBody200Result'
  -> PostEditMessageLiveLocationResponseBody200
mkPostEditMessageLiveLocationResponseBody200 postEditMessageLiveLocationResponseBody200Ok postEditMessageLiveLocationResponseBody200Result = PostEditMessageLiveLocationResponseBody200{postEditMessageLiveLocationResponseBody200Ok = postEditMessageLiveLocationResponseBody200Ok,
                                                                                                                                                                                        postEditMessageLiveLocationResponseBody200Result = postEditMessageLiveLocationResponseBody200Result}
-- | Defines the oneOf schema located at @paths.\/editMessageLiveLocation.POST.responses.200.content.application\/json.schema.properties.result.anyOf@ in the specification.
-- 
-- 
data PostEditMessageLiveLocationResponseBody200ResultVariants =
   PostEditMessageLiveLocationResponseBody200ResultMessage Message
  | PostEditMessageLiveLocationResponseBody200ResultBool GHC.Types.Bool
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageLiveLocationResponseBody200ResultVariants
    where toJSON (PostEditMessageLiveLocationResponseBody200ResultMessage a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostEditMessageLiveLocationResponseBody200ResultBool a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageLiveLocationResponseBody200ResultVariants
    where parseJSON val = case (PostEditMessageLiveLocationResponseBody200ResultMessage Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostEditMessageLiveLocationResponseBody200ResultBool Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | > POST /editMessageLiveLocation
-- 
-- The same as 'postEditMessageLiveLocation' but accepts an explicit configuration.
postEditMessageLiveLocationWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostEditMessageLiveLocationResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocationWithConfiguration config
                                             body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostEditMessageLiveLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PostEditMessageLiveLocationResponseBody200)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editMessageLiveLocation
-- 
-- The same as 'postEditMessageLiveLocation' but returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageLiveLocationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocationRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editMessageLiveLocation
-- 
-- The same as 'postEditMessageLiveLocation' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageLiveLocationWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocationWithConfigurationRaw config
                                                body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
