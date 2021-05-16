-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postEditMessageMedia
module TgBotAPI.Operations.PostEditMessageMedia where

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

-- | > POST /editMessageMedia
-- 
-- Use this method to edit animation, audio, document, photo, or video messages. If a message is part of a message album, then it can be edited only to an audio for audio albums, only to a document for document albums and to a photo or a video otherwise. When an inline message is edited, a new file can\'t be uploaded. Use a previously uploaded file via its file\\_id or specify a URL. On success, if the edited message was sent by the bot, the edited [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned, otherwise *True* is returned.
postEditMessageMedia :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostEditMessageMediaResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageMedia = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostEditMessageMediaResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageMediaResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                          PostEditMessageMediaResponseBody200)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageMediaResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageMedia") GHC.Base.mempty)
-- | Represents a response of the operation 'postEditMessageMedia'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEditMessageMediaResponseError' is used.
data PostEditMessageMediaResponse =
   PostEditMessageMediaResponseError Data.Text.Text -- ^ Means either no matching case available or a parse error
  | PostEditMessageMediaResponse200 PostEditMessageMediaResponseBody200 -- ^ 
  | PostEditMessageMediaResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/editMessageMedia.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageMediaResponseBody200 = PostEditMessageMediaResponseBody200 {
  -- | ok
  postEditMessageMediaResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postEditMessageMediaResponseBody200Result :: PostEditMessageMediaResponseBody200ResultVariants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageMediaResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postEditMessageMediaResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postEditMessageMediaResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postEditMessageMediaResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postEditMessageMediaResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageMediaResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageMediaResponseBody200" (\obj -> (GHC.Base.pure PostEditMessageMediaResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostEditMessageMediaResponseBody200' with all required fields.
mkPostEditMessageMediaResponseBody200 :: GHC.Types.Bool -- ^ 'postEditMessageMediaResponseBody200Ok'
  -> PostEditMessageMediaResponseBody200ResultVariants -- ^ 'postEditMessageMediaResponseBody200Result'
  -> PostEditMessageMediaResponseBody200
mkPostEditMessageMediaResponseBody200 postEditMessageMediaResponseBody200Ok postEditMessageMediaResponseBody200Result = PostEditMessageMediaResponseBody200{postEditMessageMediaResponseBody200Ok = postEditMessageMediaResponseBody200Ok,
                                                                                                                                                            postEditMessageMediaResponseBody200Result = postEditMessageMediaResponseBody200Result}
-- | Defines the oneOf schema located at @paths.\/editMessageMedia.POST.responses.200.content.application\/json.schema.properties.result.anyOf@ in the specification.
-- 
-- 
data PostEditMessageMediaResponseBody200ResultVariants =
   PostEditMessageMediaResponseBody200ResultMessage Message
  | PostEditMessageMediaResponseBody200ResultBool GHC.Types.Bool
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageMediaResponseBody200ResultVariants
    where toJSON (PostEditMessageMediaResponseBody200ResultMessage a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostEditMessageMediaResponseBody200ResultBool a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageMediaResponseBody200ResultVariants
    where parseJSON val = case (PostEditMessageMediaResponseBody200ResultMessage Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostEditMessageMediaResponseBody200ResultBool Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | > POST /editMessageMedia
-- 
-- The same as 'postEditMessageMedia' but accepts an explicit configuration.
postEditMessageMediaWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response PostEditMessageMediaResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageMediaWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostEditMessageMediaResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageMediaResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostEditMessageMediaResponseBody200)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageMediaResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageMedia") GHC.Base.mempty)
-- | > POST /editMessageMedia
-- 
-- The same as 'postEditMessageMedia' but returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageMediaRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageMediaRaw = GHC.Base.id (TgBotAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageMedia") GHC.Base.mempty)
-- | > POST /editMessageMedia
-- 
-- The same as 'postEditMessageMedia' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageMediaWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageMediaWithConfigurationRaw config = GHC.Base.id (TgBotAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageMedia") GHC.Base.mempty)
