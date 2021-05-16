-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postGetStickerSet
module TgBotAPI.Operations.PostGetStickerSet where

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

-- | > POST /getStickerSet
-- 
-- Use this method to get a sticker set. On success, a [StickerSet](https:\/\/core.telegram.org\/bots\/api\/\#stickerset) object is returned.
postGetStickerSet :: forall m . TgBotAPI.Common.MonadHTTP m => PostGetStickerSetRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostGetStickerSetResponse) -- ^ Monadic computation which returns the result of the operation
postGetStickerSet body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostGetStickerSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetStickerSetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      PostGetStickerSetResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetStickerSetResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getStickerSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/getStickerSet.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetStickerSetRequestBody = PostGetStickerSetRequestBody {
  -- | name: Name of the sticker set
  postGetStickerSetRequestBodyName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetStickerSetRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("name" Data.Aeson.Types.ToJSON..= postGetStickerSetRequestBodyName obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("name" Data.Aeson.Types.ToJSON..= postGetStickerSetRequestBodyName obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostGetStickerSetRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetStickerSetRequestBody" (\obj -> GHC.Base.pure PostGetStickerSetRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))
-- | Create a new 'PostGetStickerSetRequestBody' with all required fields.
mkPostGetStickerSetRequestBody :: Data.Text.Internal.Text -- ^ 'postGetStickerSetRequestBodyName'
  -> PostGetStickerSetRequestBody
mkPostGetStickerSetRequestBody postGetStickerSetRequestBodyName = PostGetStickerSetRequestBody{postGetStickerSetRequestBodyName = postGetStickerSetRequestBodyName}
-- | Represents a response of the operation 'postGetStickerSet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostGetStickerSetResponseError' is used.
data PostGetStickerSetResponse =
   PostGetStickerSetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostGetStickerSetResponse200 PostGetStickerSetResponseBody200 -- ^ 
  | PostGetStickerSetResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/getStickerSet.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostGetStickerSetResponseBody200 = PostGetStickerSetResponseBody200 {
  -- | ok
  postGetStickerSetResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a sticker set.
  , postGetStickerSetResponseBody200Result :: StickerSet
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostGetStickerSetResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postGetStickerSetResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postGetStickerSetResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postGetStickerSetResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postGetStickerSetResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostGetStickerSetResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostGetStickerSetResponseBody200" (\obj -> (GHC.Base.pure PostGetStickerSetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostGetStickerSetResponseBody200' with all required fields.
mkPostGetStickerSetResponseBody200 :: GHC.Types.Bool -- ^ 'postGetStickerSetResponseBody200Ok'
  -> StickerSet -- ^ 'postGetStickerSetResponseBody200Result'
  -> PostGetStickerSetResponseBody200
mkPostGetStickerSetResponseBody200 postGetStickerSetResponseBody200Ok postGetStickerSetResponseBody200Result = PostGetStickerSetResponseBody200{postGetStickerSetResponseBody200Ok = postGetStickerSetResponseBody200Ok,
                                                                                                                                                postGetStickerSetResponseBody200Result = postGetStickerSetResponseBody200Result}
-- | > POST /getStickerSet
-- 
-- The same as 'postGetStickerSet' but accepts an explicit configuration.
postGetStickerSetWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostGetStickerSetRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostGetStickerSetResponse) -- ^ Monadic computation which returns the result of the operation
postGetStickerSetWithConfiguration config
                                   body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostGetStickerSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostGetStickerSetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       PostGetStickerSetResponseBody200)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostGetStickerSetResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getStickerSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /getStickerSet
-- 
-- The same as 'postGetStickerSet' but returns the raw 'Data.ByteString.Char8.ByteString'.
postGetStickerSetRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostGetStickerSetRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postGetStickerSetRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getStickerSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /getStickerSet
-- 
-- The same as 'postGetStickerSet' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postGetStickerSetWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostGetStickerSetRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postGetStickerSetWithConfigurationRaw config
                                      body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/getStickerSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
