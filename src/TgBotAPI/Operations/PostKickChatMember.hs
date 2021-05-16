-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postKickChatMember
module TgBotAPI.Operations.PostKickChatMember where

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

-- | > POST /kickChatMember
-- 
-- Use this method to kick a user from a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the chat on their own using invite links, etc., unless [unbanned](https:\/\/core.telegram.org\/bots\/api\/\#unbanchatmember) first. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns *True* on success.
postKickChatMember :: forall m . TgBotAPI.Common.MonadHTTP m => PostKickChatMemberRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostKickChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postKickChatMember body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostKickChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostKickChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         PostKickChatMemberResponseBody200)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostKickChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/kickChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/kickChatMember.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostKickChatMemberRequestBody = PostKickChatMemberRequestBody {
  -- | chat_id: Unique identifier for the target group or username of the target supergroup or channel (in the format \`\@channelusername\`)
  postKickChatMemberRequestBodyChatId :: PostKickChatMemberRequestBodyChatIdVariants
  -- | revoke_messages: Pass *True* to delete all messages from the chat for the user that is being removed. If *False*, the user will be able to see messages in the group that were sent before the user was removed. Always *True* for supergroups and channels.
  , postKickChatMemberRequestBodyRevokeMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | until_date: Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever. Applied for supergroups and channels only.
  , postKickChatMemberRequestBodyUntilDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | user_id: Unique identifier of the target user
  , postKickChatMemberRequestBodyUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostKickChatMemberRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyChatId obj : "revoke_messages" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyRevokeMessages obj : "until_date" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyUntilDate obj : "user_id" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyChatId obj) GHC.Base.<> (("revoke_messages" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyRevokeMessages obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyUntilDate obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= postKickChatMemberRequestBodyUserId obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostKickChatMemberRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostKickChatMemberRequestBody" (\obj -> (((GHC.Base.pure PostKickChatMemberRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "revoke_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostKickChatMemberRequestBody' with all required fields.
mkPostKickChatMemberRequestBody :: PostKickChatMemberRequestBodyChatIdVariants -- ^ 'postKickChatMemberRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postKickChatMemberRequestBodyUserId'
  -> PostKickChatMemberRequestBody
mkPostKickChatMemberRequestBody postKickChatMemberRequestBodyChatId postKickChatMemberRequestBodyUserId = PostKickChatMemberRequestBody{postKickChatMemberRequestBodyChatId = postKickChatMemberRequestBodyChatId,
                                                                                                                                        postKickChatMemberRequestBodyRevokeMessages = GHC.Maybe.Nothing,
                                                                                                                                        postKickChatMemberRequestBodyUntilDate = GHC.Maybe.Nothing,
                                                                                                                                        postKickChatMemberRequestBodyUserId = postKickChatMemberRequestBodyUserId}
-- | Defines the oneOf schema located at @paths.\/kickChatMember.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target group or username of the target supergroup or channel (in the format \`\@channelusername\`)
data PostKickChatMemberRequestBodyChatIdVariants =
   PostKickChatMemberRequestBodyChatIdInt GHC.Types.Int
  | PostKickChatMemberRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostKickChatMemberRequestBodyChatIdVariants
    where toJSON (PostKickChatMemberRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostKickChatMemberRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostKickChatMemberRequestBodyChatIdVariants
    where parseJSON val = case (PostKickChatMemberRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostKickChatMemberRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postKickChatMember'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostKickChatMemberResponseError' is used.
data PostKickChatMemberResponse =
   PostKickChatMemberResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostKickChatMemberResponse200 PostKickChatMemberResponseBody200 -- ^ 
  | PostKickChatMemberResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/kickChatMember.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostKickChatMemberResponseBody200 = PostKickChatMemberResponseBody200 {
  -- | ok
  postKickChatMemberResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postKickChatMemberResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostKickChatMemberResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postKickChatMemberResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postKickChatMemberResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postKickChatMemberResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postKickChatMemberResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostKickChatMemberResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostKickChatMemberResponseBody200" (\obj -> (GHC.Base.pure PostKickChatMemberResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostKickChatMemberResponseBody200' with all required fields.
mkPostKickChatMemberResponseBody200 :: GHC.Types.Bool -- ^ 'postKickChatMemberResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postKickChatMemberResponseBody200Result'
  -> PostKickChatMemberResponseBody200
mkPostKickChatMemberResponseBody200 postKickChatMemberResponseBody200Ok postKickChatMemberResponseBody200Result = PostKickChatMemberResponseBody200{postKickChatMemberResponseBody200Ok = postKickChatMemberResponseBody200Ok,
                                                                                                                                                    postKickChatMemberResponseBody200Result = postKickChatMemberResponseBody200Result}
-- | > POST /kickChatMember
-- 
-- The same as 'postKickChatMember' but accepts an explicit configuration.
postKickChatMemberWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostKickChatMemberRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostKickChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postKickChatMemberWithConfiguration config
                                    body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostKickChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostKickChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          PostKickChatMemberResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostKickChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/kickChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /kickChatMember
-- 
-- The same as 'postKickChatMember' but returns the raw 'Data.ByteString.Char8.ByteString'.
postKickChatMemberRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostKickChatMemberRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postKickChatMemberRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/kickChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /kickChatMember
-- 
-- The same as 'postKickChatMember' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postKickChatMemberWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostKickChatMemberRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postKickChatMemberWithConfigurationRaw config
                                       body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/kickChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
