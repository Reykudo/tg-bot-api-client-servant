-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postAnswerCallbackQuery
module TgBotAPI.Operations.PostAnswerCallbackQuery where

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

-- | > POST /answerCallbackQuery
-- 
-- Use this method to send answers to callback queries sent from [inline keyboards](\/bots\#inline-keyboards-and-on-the-fly-updating). The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, *True* is returned.
-- 
-- Alternatively, the user can be redirected to the specified Game URL. For this option to work, you must first create a game for your bot via [\@Botfather](https:\/\/t.me\/botfather) and accept the terms. Otherwise, you may use links like \`t.me\/your_bot?start=XXXX\` that open your bot with a parameter.
postAnswerCallbackQuery :: forall m . TgBotAPI.Common.MonadHTTP m => PostAnswerCallbackQueryRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostAnswerCallbackQueryResponse) -- ^ Monadic computation which returns the result of the operation
postAnswerCallbackQuery body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAnswerCallbackQueryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerCallbackQueryResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        PostAnswerCallbackQueryResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerCallbackQueryResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerCallbackQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/answerCallbackQuery.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAnswerCallbackQueryRequestBody = PostAnswerCallbackQueryRequestBody {
  -- | cache_time: The maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.
  cacheTime :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | callback_query_id: Unique identifier for the query to be answered
  , callbackQueryId :: Data.Text.Internal.Text
  -- | show_alert: If *true*, an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to *false*.
  , showAlert :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | text: Text of the notification. If not specified, nothing will be shown to the user, 0-200 characters
  , text :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: URL that will be opened by the user\'s client. If you have created a [Game](https:\/\/core.telegram.org\/bots\/api\/\#game) and accepted the conditions via [\@Botfather](https:\/\/t.me\/botfather), specify the URL that opens your game — note that this will only work if the query comes from a [*callback\\_game*](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) button.  
  -- 
  -- Otherwise, you may use links like \`t.me\/your_bot?start=XXXX\` that open your bot with a parameter.
  , url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAnswerCallbackQueryRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("cache_time" Data.Aeson.Types.ToJSON..= cacheTime obj : "callback_query_id" Data.Aeson.Types.ToJSON..= callbackQueryId obj : "show_alert" Data.Aeson.Types.ToJSON..= showAlert obj : "text" Data.Aeson.Types.ToJSON..= text obj : "url" Data.Aeson.Types.ToJSON..= url obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("cache_time" Data.Aeson.Types.ToJSON..= cacheTime obj) GHC.Base.<> (("callback_query_id" Data.Aeson.Types.ToJSON..= callbackQueryId obj) GHC.Base.<> (("show_alert" Data.Aeson.Types.ToJSON..= showAlert obj) GHC.Base.<> (("text" Data.Aeson.Types.ToJSON..= text obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= url obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostAnswerCallbackQueryRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAnswerCallbackQueryRequestBody" (\obj -> ((((GHC.Base.pure PostAnswerCallbackQueryRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cache_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "callback_query_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "show_alert")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Create a new 'PostAnswerCallbackQueryRequestBody' with all required fields.
mkPostAnswerCallbackQueryRequestBody :: Data.Text.Internal.Text -- ^ 'callbackQueryId'
  -> PostAnswerCallbackQueryRequestBody
mkPostAnswerCallbackQueryRequestBody callbackQueryId = PostAnswerCallbackQueryRequestBody{cacheTime = GHC.Maybe.Nothing,
                                                                                          callbackQueryId = callbackQueryId,
                                                                                          showAlert = GHC.Maybe.Nothing,
                                                                                          text = GHC.Maybe.Nothing,
                                                                                          url = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postAnswerCallbackQuery'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAnswerCallbackQueryResponseError' is used.
data PostAnswerCallbackQueryResponse =
   PostAnswerCallbackQueryResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostAnswerCallbackQueryResponse200 PostAnswerCallbackQueryResponseBody200 -- ^ 
  | PostAnswerCallbackQueryResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/answerCallbackQuery.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAnswerCallbackQueryResponseBody200 = PostAnswerCallbackQueryResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result
  , result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAnswerCallbackQueryResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAnswerCallbackQueryResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAnswerCallbackQueryResponseBody200" (\obj -> (GHC.Base.pure PostAnswerCallbackQueryResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostAnswerCallbackQueryResponseBody200' with all required fields.
mkPostAnswerCallbackQueryResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> GHC.Types.Bool -- ^ 'result'
  -> PostAnswerCallbackQueryResponseBody200
mkPostAnswerCallbackQueryResponseBody200 ok result = PostAnswerCallbackQueryResponseBody200{ok = ok,
                                                                                            result = result}
-- | > POST /answerCallbackQuery
-- 
-- The same as 'postAnswerCallbackQuery' but accepts an explicit configuration.
postAnswerCallbackQueryWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostAnswerCallbackQueryRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostAnswerCallbackQueryResponse) -- ^ Monadic computation which returns the result of the operation
postAnswerCallbackQueryWithConfiguration config
                                         body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAnswerCallbackQueryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerCallbackQueryResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                         PostAnswerCallbackQueryResponseBody200)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerCallbackQueryResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerCallbackQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /answerCallbackQuery
-- 
-- The same as 'postAnswerCallbackQuery' but returns the raw 'Data.ByteString.Char8.ByteString'.
postAnswerCallbackQueryRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostAnswerCallbackQueryRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postAnswerCallbackQueryRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerCallbackQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /answerCallbackQuery
-- 
-- The same as 'postAnswerCallbackQuery' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postAnswerCallbackQueryWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostAnswerCallbackQueryRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postAnswerCallbackQueryWithConfigurationRaw config
                                            body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerCallbackQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
