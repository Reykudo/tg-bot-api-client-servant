-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCreateChatInviteLink
module TgBotAPI.Operations.PostCreateChatInviteLink where

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

-- | > POST /createChatInviteLink
-- 
-- Use this method to create an additional invite link for a chat. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. The link can be revoked using the method [revokeChatInviteLink](https:\/\/core.telegram.org\/bots\/api\/\#revokechatinvitelink). Returns the new invite link as [ChatInviteLink](https:\/\/core.telegram.org\/bots\/api\/\#chatinvitelink) object.
postCreateChatInviteLink :: forall m . TgBotAPI.Common.MonadHTTP m => PostCreateChatInviteLinkRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostCreateChatInviteLinkResponse) -- ^ Monadic computation which returns the result of the operation
postCreateChatInviteLink body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCreateChatInviteLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreateChatInviteLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           PostCreateChatInviteLinkResponseBody200)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreateChatInviteLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/createChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/createChatInviteLink.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostCreateChatInviteLinkRequestBody = PostCreateChatInviteLinkRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postCreateChatInviteLinkRequestBodyChatId :: PostCreateChatInviteLinkRequestBodyChatIdVariants
  -- | expire_date: Point in time (Unix timestamp) when the link will expire
  , postCreateChatInviteLinkRequestBodyExpireDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | member_limit: Maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  , postCreateChatInviteLinkRequestBodyMemberLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreateChatInviteLinkRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkRequestBodyChatId obj : "expire_date" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkRequestBodyExpireDate obj : "member_limit" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkRequestBodyMemberLimit obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkRequestBodyChatId obj) GHC.Base.<> (("expire_date" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkRequestBodyExpireDate obj) GHC.Base.<> ("member_limit" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkRequestBodyMemberLimit obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreateChatInviteLinkRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreateChatInviteLinkRequestBody" (\obj -> ((GHC.Base.pure PostCreateChatInviteLinkRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expire_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "member_limit"))
-- | Create a new 'PostCreateChatInviteLinkRequestBody' with all required fields.
mkPostCreateChatInviteLinkRequestBody :: PostCreateChatInviteLinkRequestBodyChatIdVariants -- ^ 'postCreateChatInviteLinkRequestBodyChatId'
  -> PostCreateChatInviteLinkRequestBody
mkPostCreateChatInviteLinkRequestBody postCreateChatInviteLinkRequestBodyChatId = PostCreateChatInviteLinkRequestBody{postCreateChatInviteLinkRequestBodyChatId = postCreateChatInviteLinkRequestBodyChatId,
                                                                                                                      postCreateChatInviteLinkRequestBodyExpireDate = GHC.Maybe.Nothing,
                                                                                                                      postCreateChatInviteLinkRequestBodyMemberLimit = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/createChatInviteLink.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostCreateChatInviteLinkRequestBodyChatIdVariants =
   PostCreateChatInviteLinkRequestBodyChatIdInt GHC.Types.Int
  | PostCreateChatInviteLinkRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreateChatInviteLinkRequestBodyChatIdVariants
    where toJSON (PostCreateChatInviteLinkRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostCreateChatInviteLinkRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostCreateChatInviteLinkRequestBodyChatIdVariants
    where parseJSON val = case (PostCreateChatInviteLinkRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostCreateChatInviteLinkRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postCreateChatInviteLink'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCreateChatInviteLinkResponseError' is used.
data PostCreateChatInviteLinkResponse =
   PostCreateChatInviteLinkResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCreateChatInviteLinkResponse200 PostCreateChatInviteLinkResponseBody200 -- ^ 
  | PostCreateChatInviteLinkResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/createChatInviteLink.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostCreateChatInviteLinkResponseBody200 = PostCreateChatInviteLinkResponseBody200 {
  -- | ok
  postCreateChatInviteLinkResponseBody200Ok :: GHC.Types.Bool
  -- | result: Represents an invite link for a chat.
  , postCreateChatInviteLinkResponseBody200Result :: ChatInviteLink
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreateChatInviteLinkResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postCreateChatInviteLinkResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreateChatInviteLinkResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreateChatInviteLinkResponseBody200" (\obj -> (GHC.Base.pure PostCreateChatInviteLinkResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostCreateChatInviteLinkResponseBody200' with all required fields.
mkPostCreateChatInviteLinkResponseBody200 :: GHC.Types.Bool -- ^ 'postCreateChatInviteLinkResponseBody200Ok'
  -> ChatInviteLink -- ^ 'postCreateChatInviteLinkResponseBody200Result'
  -> PostCreateChatInviteLinkResponseBody200
mkPostCreateChatInviteLinkResponseBody200 postCreateChatInviteLinkResponseBody200Ok postCreateChatInviteLinkResponseBody200Result = PostCreateChatInviteLinkResponseBody200{postCreateChatInviteLinkResponseBody200Ok = postCreateChatInviteLinkResponseBody200Ok,
                                                                                                                                                                            postCreateChatInviteLinkResponseBody200Result = postCreateChatInviteLinkResponseBody200Result}
-- | > POST /createChatInviteLink
-- 
-- The same as 'postCreateChatInviteLink' but accepts an explicit configuration.
postCreateChatInviteLinkWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostCreateChatInviteLinkRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostCreateChatInviteLinkResponse) -- ^ Monadic computation which returns the result of the operation
postCreateChatInviteLinkWithConfiguration config
                                          body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCreateChatInviteLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreateChatInviteLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                            PostCreateChatInviteLinkResponseBody200)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreateChatInviteLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/createChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /createChatInviteLink
-- 
-- The same as 'postCreateChatInviteLink' but returns the raw 'Data.ByteString.Char8.ByteString'.
postCreateChatInviteLinkRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostCreateChatInviteLinkRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postCreateChatInviteLinkRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/createChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /createChatInviteLink
-- 
-- The same as 'postCreateChatInviteLink' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postCreateChatInviteLinkWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostCreateChatInviteLinkRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postCreateChatInviteLinkWithConfigurationRaw config
                                             body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/createChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
