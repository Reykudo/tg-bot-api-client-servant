-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postGetUpdates
module TgBotAPI.Operations.PostGetUpdates where

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

-- | > POST /getUpdates
-- 
-- Use this method to receive incoming updates using long polling ([wiki](https:\/\/en.wikipedia.org\/wiki\/Push_technology\#Long_polling)). An Array of [Update](https:\/\/core.telegram.org\/bots\/api\/\#update) objects is returned.
postGetUpdates :: forall m . TgBotAPI.Common.MonadHTTP m => PostGetUpdatesRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostGetUpdatesResponse) -- ^ Monadic computation which returns the result of the operation
postGetUpdates body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostGetUpdatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetUpdatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             PostGetUpdatesResponseBody200)
                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetUpdatesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getUpdates") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/getUpdates.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetUpdatesRequestBody = PostGetUpdatesRequestBody {
  -- | allowed_updates: A JSON-serialized list of the update types you want your bot to receive. For example, specify [“message”, “edited\\_channel\\_post”, “callback\\_query”] to only receive updates of these types. See [Update](https:\/\/core.telegram.org\/bots\/api\/\#update) for a complete list of available update types. Specify an empty list to receive all update types except *chat\\_member* (default). If not specified, the previous setting will be used.  
  -- 
  -- Please note that this parameter doesn\'t affect updates created before the call to the getUpdates, so unwanted updates may be received for a short period of time.
  allowedUpdates :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | limit: Limits the number of updates to be retrieved. Values between 1-100 are accepted. Defaults to 100.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 1.0
  , limit :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | offset: Identifier of the first update to be returned. Must be greater by one than the highest among the identifiers of previously received updates. By default, updates starting with the earliest unconfirmed update are returned. An update is considered confirmed as soon as [getUpdates](https:\/\/core.telegram.org\/bots\/api\/\#getupdates) is called with an *offset* higher than its *update\\_id*. The negative offset can be specified to retrieve updates starting from *-offset* update from the end of the updates queue. All previous updates will forgotten.
  , offset :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | timeout: Timeout in seconds for long polling. Defaults to 0, i.e. usual short polling. Should be positive, short polling should be used for testing purposes only.
  , timeout :: (GHC.Maybe.Maybe GHC.Int.Int64)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetUpdatesRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allowed_updates" Data.Aeson.Types.ToJSON..= allowedUpdates obj : "limit" Data.Aeson.Types.ToJSON..= limit obj : "offset" Data.Aeson.Types.ToJSON..= offset obj : "timeout" Data.Aeson.Types.ToJSON..= timeout obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allowed_updates" Data.Aeson.Types.ToJSON..= allowedUpdates obj) GHC.Base.<> (("limit" Data.Aeson.Types.ToJSON..= limit obj) GHC.Base.<> (("offset" Data.Aeson.Types.ToJSON..= offset obj) GHC.Base.<> ("timeout" Data.Aeson.Types.ToJSON..= timeout obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetUpdatesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetUpdatesRequestBody" (\obj -> (((GHC.Base.pure PostGetUpdatesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allowed_updates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "limit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timeout"))
-- | Create a new 'PostGetUpdatesRequestBody' with all required fields.
mkPostGetUpdatesRequestBody :: PostGetUpdatesRequestBody
mkPostGetUpdatesRequestBody = PostGetUpdatesRequestBody{allowedUpdates = GHC.Maybe.Nothing,
                                                        limit = GHC.Maybe.Nothing,
                                                        offset = GHC.Maybe.Nothing,
                                                        timeout = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postGetUpdates'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostGetUpdatesResponseError' is used.
data PostGetUpdatesResponse =
   PostGetUpdatesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostGetUpdatesResponse200 PostGetUpdatesResponseBody200 -- ^ 
  | PostGetUpdatesResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/getUpdates.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetUpdatesResponseBody200 = PostGetUpdatesResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result
  , result :: ([Update])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetUpdatesResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetUpdatesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetUpdatesResponseBody200" (\obj -> (GHC.Base.pure PostGetUpdatesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostGetUpdatesResponseBody200' with all required fields.
mkPostGetUpdatesResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> [Update] -- ^ 'result'
  -> PostGetUpdatesResponseBody200
mkPostGetUpdatesResponseBody200 ok result = PostGetUpdatesResponseBody200{ok = ok,
                                                                          result = result}
-- | > POST /getUpdates
-- 
-- The same as 'postGetUpdates' but accepts an explicit configuration.
postGetUpdatesWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostGetUpdatesRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostGetUpdatesResponse) -- ^ Monadic computation which returns the result of the operation
postGetUpdatesWithConfiguration config
                                body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostGetUpdatesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetUpdatesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              PostGetUpdatesResponseBody200)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetUpdatesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getUpdates") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /getUpdates
-- 
-- The same as 'postGetUpdates' but returns the raw 'Data.ByteString.Char8.ByteString'.
postGetUpdatesRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostGetUpdatesRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postGetUpdatesRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getUpdates") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /getUpdates
-- 
-- The same as 'postGetUpdates' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postGetUpdatesWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostGetUpdatesRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postGetUpdatesWithConfigurationRaw config
                                   body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getUpdates") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
