-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAddStickerToSet
module TgBotAPI.Operations.PostAddStickerToSet where

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

-- | > POST /addStickerToSet
-- 
-- Use this method to add a new sticker to a set created by the bot. You **must** use exactly one of the fields *png\\_sticker* or *tgs\\_sticker*. Animated stickers can be added to animated sticker sets and only to them. Animated sticker sets can have up to 50 stickers. Static sticker sets can have up to 120 stickers. Returns *True* on success.
postAddStickerToSet :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostAddStickerToSetResponse) -- ^ Monadic computation which returns the result of the operation
postAddStickerToSet = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAddStickerToSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAddStickerToSetResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                       PostAddStickerToSetResponseBody200)
                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAddStickerToSetResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/addStickerToSet") GHC.Base.mempty)
-- | Represents a response of the operation 'postAddStickerToSet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAddStickerToSetResponseError' is used.
data PostAddStickerToSetResponse =
   PostAddStickerToSetResponseError Data.Text.Text -- ^ Means either no matching case available or a parse error
  | PostAddStickerToSetResponse200 PostAddStickerToSetResponseBody200 -- ^ 
  | PostAddStickerToSetResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/addStickerToSet.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostAddStickerToSetResponseBody200 = PostAddStickerToSetResponseBody200 {
  -- | ok
  postAddStickerToSetResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postAddStickerToSetResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAddStickerToSetResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postAddStickerToSetResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postAddStickerToSetResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postAddStickerToSetResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postAddStickerToSetResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostAddStickerToSetResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAddStickerToSetResponseBody200" (\obj -> (GHC.Base.pure PostAddStickerToSetResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostAddStickerToSetResponseBody200' with all required fields.
mkPostAddStickerToSetResponseBody200 :: GHC.Types.Bool -- ^ 'postAddStickerToSetResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postAddStickerToSetResponseBody200Result'
  -> PostAddStickerToSetResponseBody200
mkPostAddStickerToSetResponseBody200 postAddStickerToSetResponseBody200Ok postAddStickerToSetResponseBody200Result = PostAddStickerToSetResponseBody200{postAddStickerToSetResponseBody200Ok = postAddStickerToSetResponseBody200Ok,
                                                                                                                                                        postAddStickerToSetResponseBody200Result = postAddStickerToSetResponseBody200Result}
-- | > POST /addStickerToSet
-- 
-- The same as 'postAddStickerToSet' but accepts an explicit configuration.
postAddStickerToSetWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response PostAddStickerToSetResponse) -- ^ Monadic computation which returns the result of the operation
postAddStickerToSetWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAddStickerToSetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAddStickerToSetResponse200 Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                                                               PostAddStickerToSetResponseBody200)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAddStickerToSetResponseDefault Data.Functor.<$> ((Data.Bifunctor.first Data.Text.pack (Data.Aeson.eitherDecodeStrict body)) :: Data.Either.Either Data.Text.Text
                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/addStickerToSet") GHC.Base.mempty)
-- | > POST /addStickerToSet
-- 
-- The same as 'postAddStickerToSet' but returns the raw 'Data.ByteString.Char8.ByteString'.
postAddStickerToSetRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postAddStickerToSetRaw = GHC.Base.id (TgBotAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/addStickerToSet") GHC.Base.mempty)
-- | > POST /addStickerToSet
-- 
-- The same as 'postAddStickerToSet' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postAddStickerToSetWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postAddStickerToSetWithConfigurationRaw config = GHC.Base.id (TgBotAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/addStickerToSet") GHC.Base.mempty)
