-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAnswerPreCheckoutQuery
module TgBotAPI.Operations.PostAnswerPreCheckoutQuery where

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

-- | > POST /answerPreCheckoutQuery
-- 
-- Once the user has confirmed their payment and shipping details, the Bot API sends the final confirmation in the form of an [Update](https:\/\/core.telegram.org\/bots\/api\/\#update) with the field *pre\\_checkout\\_query*. Use this method to respond to such pre-checkout queries. On success, True is returned. **Note:** The Bot API must receive an answer within 10 seconds after the pre-checkout query was sent.
postAnswerPreCheckoutQuery :: forall m . TgBotAPI.Common.MonadHTTP m => PostAnswerPreCheckoutQueryRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostAnswerPreCheckoutQueryResponse) -- ^ Monadic computation which returns the result of the operation
postAnswerPreCheckoutQuery body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAnswerPreCheckoutQueryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerPreCheckoutQueryResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostAnswerPreCheckoutQueryResponseBody200)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerPreCheckoutQueryResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerPreCheckoutQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/answerPreCheckoutQuery.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAnswerPreCheckoutQueryRequestBody = PostAnswerPreCheckoutQueryRequestBody {
  -- | error_message: Required if *ok* is *False*. Error message in human readable form that explains the reason for failure to proceed with the checkout (e.g. \"Sorry, somebody just bought the last of our amazing black T-shirts while you were busy filling out your payment details. Please choose a different color or garment!\"). Telegram will display this message to the user.
  postAnswerPreCheckoutQueryRequestBodyErrorMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ok: Specify *True* if everything is alright (goods are available, etc.) and the bot is ready to proceed with the order. Use *False* if there are any problems.
  , postAnswerPreCheckoutQueryRequestBodyOk :: GHC.Types.Bool
  -- | pre_checkout_query_id: Unique identifier for the query to be answered
  , postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAnswerPreCheckoutQueryRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("error_message" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryRequestBodyErrorMessage obj : "ok" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryRequestBodyOk obj : "pre_checkout_query_id" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("error_message" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryRequestBodyErrorMessage obj) GHC.Base.<> (("ok" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryRequestBodyOk obj) GHC.Base.<> ("pre_checkout_query_id" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAnswerPreCheckoutQueryRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAnswerPreCheckoutQueryRequestBody" (\obj -> ((GHC.Base.pure PostAnswerPreCheckoutQueryRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pre_checkout_query_id"))
-- | Create a new 'PostAnswerPreCheckoutQueryRequestBody' with all required fields.
mkPostAnswerPreCheckoutQueryRequestBody :: GHC.Types.Bool -- ^ 'postAnswerPreCheckoutQueryRequestBodyOk'
  -> Data.Text.Internal.Text -- ^ 'postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId'
  -> PostAnswerPreCheckoutQueryRequestBody
mkPostAnswerPreCheckoutQueryRequestBody postAnswerPreCheckoutQueryRequestBodyOk postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId = PostAnswerPreCheckoutQueryRequestBody{postAnswerPreCheckoutQueryRequestBodyErrorMessage = GHC.Maybe.Nothing,
                                                                                                                                                                                postAnswerPreCheckoutQueryRequestBodyOk = postAnswerPreCheckoutQueryRequestBodyOk,
                                                                                                                                                                                postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId = postAnswerPreCheckoutQueryRequestBodyPreCheckoutQueryId}
-- | Represents a response of the operation 'postAnswerPreCheckoutQuery'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAnswerPreCheckoutQueryResponseError' is used.
data PostAnswerPreCheckoutQueryResponse =
   PostAnswerPreCheckoutQueryResponseError Data.Text.Text -- ^ Means either no matching case available or a parse error
  | PostAnswerPreCheckoutQueryResponse200 PostAnswerPreCheckoutQueryResponseBody200 -- ^ 
  | PostAnswerPreCheckoutQueryResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/answerPreCheckoutQuery.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAnswerPreCheckoutQueryResponseBody200 = PostAnswerPreCheckoutQueryResponseBody200 {
  -- | ok
  postAnswerPreCheckoutQueryResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postAnswerPreCheckoutQueryResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAnswerPreCheckoutQueryResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postAnswerPreCheckoutQueryResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAnswerPreCheckoutQueryResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAnswerPreCheckoutQueryResponseBody200" (\obj -> (GHC.Base.pure PostAnswerPreCheckoutQueryResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostAnswerPreCheckoutQueryResponseBody200' with all required fields.
mkPostAnswerPreCheckoutQueryResponseBody200 :: GHC.Types.Bool -- ^ 'postAnswerPreCheckoutQueryResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postAnswerPreCheckoutQueryResponseBody200Result'
  -> PostAnswerPreCheckoutQueryResponseBody200
mkPostAnswerPreCheckoutQueryResponseBody200 postAnswerPreCheckoutQueryResponseBody200Ok postAnswerPreCheckoutQueryResponseBody200Result = PostAnswerPreCheckoutQueryResponseBody200{postAnswerPreCheckoutQueryResponseBody200Ok = postAnswerPreCheckoutQueryResponseBody200Ok,
                                                                                                                                                                                    postAnswerPreCheckoutQueryResponseBody200Result = postAnswerPreCheckoutQueryResponseBody200Result}
-- | > POST /answerPreCheckoutQuery
-- 
-- The same as 'postAnswerPreCheckoutQuery' but accepts an explicit configuration.
postAnswerPreCheckoutQueryWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostAnswerPreCheckoutQueryRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostAnswerPreCheckoutQueryResponse) -- ^ Monadic computation which returns the result of the operation
postAnswerPreCheckoutQueryWithConfiguration config
                                            body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAnswerPreCheckoutQueryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerPreCheckoutQueryResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostAnswerPreCheckoutQueryResponseBody200)
                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAnswerPreCheckoutQueryResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerPreCheckoutQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /answerPreCheckoutQuery
-- 
-- The same as 'postAnswerPreCheckoutQuery' but returns the raw 'Data.ByteString.Char8.ByteString'.
postAnswerPreCheckoutQueryRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostAnswerPreCheckoutQueryRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postAnswerPreCheckoutQueryRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerPreCheckoutQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /answerPreCheckoutQuery
-- 
-- The same as 'postAnswerPreCheckoutQuery' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postAnswerPreCheckoutQueryWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostAnswerPreCheckoutQueryRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postAnswerPreCheckoutQueryWithConfigurationRaw config
                                               body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/answerPreCheckoutQuery") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
