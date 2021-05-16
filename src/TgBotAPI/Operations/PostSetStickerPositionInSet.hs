-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSetStickerPositionInSet
module TgBotAPI.Operations.PostSetStickerPositionInSet where

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

-- | > POST /setStickerPositionInSet
-- 
-- Use this method to move a sticker in a set created by the bot to a specific position. Returns *True* on success.
postSetStickerPositionInSet :: forall m . TgBotAPI.Common.MonadHTTP m => PostSetStickerPositionInSetRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSetStickerPositionInSetResponse) -- ^ Monadic computation which returns the result of the operation
postSetStickerPositionInSet body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetStickerPositionInSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetStickerPositionInSetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    PostSetStickerPositionInSetResponseBody200)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetStickerPositionInSetResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setStickerPositionInSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/setStickerPositionInSet.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSetStickerPositionInSetRequestBody = PostSetStickerPositionInSetRequestBody {
  -- | position: New sticker position in the set, zero-based
  postSetStickerPositionInSetRequestBodyPosition :: GHC.Types.Int
  -- | sticker: File identifier of the sticker
  , postSetStickerPositionInSetRequestBodySticker :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSetStickerPositionInSetRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("position" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetRequestBodyPosition obj : "sticker" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetRequestBodySticker obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("position" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetRequestBodyPosition obj) GHC.Base.<> ("sticker" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetRequestBodySticker obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetStickerPositionInSetRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetStickerPositionInSetRequestBody" (\obj -> (GHC.Base.pure PostSetStickerPositionInSetRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "position")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sticker"))
-- | Create a new 'PostSetStickerPositionInSetRequestBody' with all required fields.
mkPostSetStickerPositionInSetRequestBody :: GHC.Types.Int -- ^ 'postSetStickerPositionInSetRequestBodyPosition'
  -> Data.Text.Internal.Text -- ^ 'postSetStickerPositionInSetRequestBodySticker'
  -> PostSetStickerPositionInSetRequestBody
mkPostSetStickerPositionInSetRequestBody postSetStickerPositionInSetRequestBodyPosition postSetStickerPositionInSetRequestBodySticker = PostSetStickerPositionInSetRequestBody{postSetStickerPositionInSetRequestBodyPosition = postSetStickerPositionInSetRequestBodyPosition,
                                                                                                                                                                               postSetStickerPositionInSetRequestBodySticker = postSetStickerPositionInSetRequestBodySticker}
-- | Represents a response of the operation 'postSetStickerPositionInSet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSetStickerPositionInSetResponseError' is used.
data PostSetStickerPositionInSetResponse =
   PostSetStickerPositionInSetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSetStickerPositionInSetResponse200 PostSetStickerPositionInSetResponseBody200 -- ^ 
  | PostSetStickerPositionInSetResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/setStickerPositionInSet.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSetStickerPositionInSetResponseBody200 = PostSetStickerPositionInSetResponseBody200 {
  -- | ok
  postSetStickerPositionInSetResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postSetStickerPositionInSetResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSetStickerPositionInSetResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postSetStickerPositionInSetResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetStickerPositionInSetResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetStickerPositionInSetResponseBody200" (\obj -> (GHC.Base.pure PostSetStickerPositionInSetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSetStickerPositionInSetResponseBody200' with all required fields.
mkPostSetStickerPositionInSetResponseBody200 :: GHC.Types.Bool -- ^ 'postSetStickerPositionInSetResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postSetStickerPositionInSetResponseBody200Result'
  -> PostSetStickerPositionInSetResponseBody200
mkPostSetStickerPositionInSetResponseBody200 postSetStickerPositionInSetResponseBody200Ok postSetStickerPositionInSetResponseBody200Result = PostSetStickerPositionInSetResponseBody200{postSetStickerPositionInSetResponseBody200Ok = postSetStickerPositionInSetResponseBody200Ok,
                                                                                                                                                                                        postSetStickerPositionInSetResponseBody200Result = postSetStickerPositionInSetResponseBody200Result}
-- | > POST /setStickerPositionInSet
-- 
-- The same as 'postSetStickerPositionInSet' but accepts an explicit configuration.
postSetStickerPositionInSetWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSetStickerPositionInSetRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSetStickerPositionInSetResponse) -- ^ Monadic computation which returns the result of the operation
postSetStickerPositionInSetWithConfiguration config
                                             body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetStickerPositionInSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetStickerPositionInSetResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PostSetStickerPositionInSetResponseBody200)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetStickerPositionInSetResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setStickerPositionInSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /setStickerPositionInSet
-- 
-- The same as 'postSetStickerPositionInSet' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSetStickerPositionInSetRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSetStickerPositionInSetRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSetStickerPositionInSetRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setStickerPositionInSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /setStickerPositionInSet
-- 
-- The same as 'postSetStickerPositionInSet' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSetStickerPositionInSetWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSetStickerPositionInSetRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSetStickerPositionInSetWithConfigurationRaw config
                                                body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setStickerPositionInSet") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
