-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPromoteChatMember
module TgBotAPI.Operations.PostPromoteChatMember where

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

-- | > POST /promoteChatMember
-- 
-- Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Pass *False* for all boolean parameters to demote a user. Returns *True* on success.
postPromoteChatMember :: forall m . TgBotAPI.Common.MonadHTTP m => PostPromoteChatMemberRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostPromoteChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postPromoteChatMember body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPromoteChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPromoteChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  PostPromoteChatMemberResponseBody200)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPromoteChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/promoteChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/promoteChatMember.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostPromoteChatMemberRequestBody = PostPromoteChatMemberRequestBody {
  -- | can_change_info: Pass True, if the administrator can change chat title, photo and other settings
  postPromoteChatMemberRequestBodyCanChangeInfo :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_delete_messages: Pass True, if the administrator can delete messages of other users
  , postPromoteChatMemberRequestBodyCanDeleteMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_edit_messages: Pass True, if the administrator can edit messages of other users and can pin messages, channels only
  , postPromoteChatMemberRequestBodyCanEditMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_invite_users: Pass True, if the administrator can invite new users to the chat
  , postPromoteChatMemberRequestBodyCanInviteUsers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_manage_chat: Pass True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
  , postPromoteChatMemberRequestBodyCanManageChat :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_manage_voice_chats: Pass True, if the administrator can manage voice chats
  , postPromoteChatMemberRequestBodyCanManageVoiceChats :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_pin_messages: Pass True, if the administrator can pin messages, supergroups only
  , postPromoteChatMemberRequestBodyCanPinMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_post_messages: Pass True, if the administrator can create channel posts, channels only
  , postPromoteChatMemberRequestBodyCanPostMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_promote_members: Pass True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by him)
  , postPromoteChatMemberRequestBodyCanPromoteMembers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_restrict_members: Pass True, if the administrator can restrict, ban or unban chat members
  , postPromoteChatMemberRequestBodyCanRestrictMembers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , postPromoteChatMemberRequestBodyChatId :: PostPromoteChatMemberRequestBodyChatIdVariants
  -- | is_anonymous: Pass *True*, if the administrator\'s presence in the chat is hidden
  , postPromoteChatMemberRequestBodyIsAnonymous :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | user_id: Unique identifier of the target user
  , postPromoteChatMemberRequestBodyUserId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPromoteChatMemberRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("can_change_info" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanChangeInfo obj : "can_delete_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanDeleteMessages obj : "can_edit_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanEditMessages obj : "can_invite_users" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanInviteUsers obj : "can_manage_chat" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanManageChat obj : "can_manage_voice_chats" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanManageVoiceChats obj : "can_pin_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanPinMessages obj : "can_post_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanPostMessages obj : "can_promote_members" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanPromoteMembers obj : "can_restrict_members" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanRestrictMembers obj : "chat_id" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyChatId obj : "is_anonymous" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyIsAnonymous obj : "user_id" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyUserId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("can_change_info" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanChangeInfo obj) GHC.Base.<> (("can_delete_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanDeleteMessages obj) GHC.Base.<> (("can_edit_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanEditMessages obj) GHC.Base.<> (("can_invite_users" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanInviteUsers obj) GHC.Base.<> (("can_manage_chat" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanManageChat obj) GHC.Base.<> (("can_manage_voice_chats" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanManageVoiceChats obj) GHC.Base.<> (("can_pin_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanPinMessages obj) GHC.Base.<> (("can_post_messages" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanPostMessages obj) GHC.Base.<> (("can_promote_members" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanPromoteMembers obj) GHC.Base.<> (("can_restrict_members" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyCanRestrictMembers obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyChatId obj) GHC.Base.<> (("is_anonymous" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyIsAnonymous obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= postPromoteChatMemberRequestBodyUserId obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPromoteChatMemberRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPromoteChatMemberRequestBody" (\obj -> ((((((((((((GHC.Base.pure PostPromoteChatMemberRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_change_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_delete_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_edit_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_invite_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_manage_chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_manage_voice_chats")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_pin_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_post_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_promote_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_restrict_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_anonymous")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostPromoteChatMemberRequestBody' with all required fields.
mkPostPromoteChatMemberRequestBody :: PostPromoteChatMemberRequestBodyChatIdVariants -- ^ 'postPromoteChatMemberRequestBodyChatId'
  -> GHC.Types.Int -- ^ 'postPromoteChatMemberRequestBodyUserId'
  -> PostPromoteChatMemberRequestBody
mkPostPromoteChatMemberRequestBody postPromoteChatMemberRequestBodyChatId postPromoteChatMemberRequestBodyUserId = PostPromoteChatMemberRequestBody{postPromoteChatMemberRequestBodyCanChangeInfo = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanDeleteMessages = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanEditMessages = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanInviteUsers = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanManageChat = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanManageVoiceChats = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanPinMessages = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanPostMessages = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanPromoteMembers = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyCanRestrictMembers = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyChatId = postPromoteChatMemberRequestBodyChatId,
                                                                                                                                                    postPromoteChatMemberRequestBodyIsAnonymous = GHC.Maybe.Nothing,
                                                                                                                                                    postPromoteChatMemberRequestBodyUserId = postPromoteChatMemberRequestBodyUserId}
-- | Defines the oneOf schema located at @paths.\/promoteChatMember.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostPromoteChatMemberRequestBodyChatIdVariants =
   PostPromoteChatMemberRequestBodyChatIdInt GHC.Types.Int
  | PostPromoteChatMemberRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPromoteChatMemberRequestBodyChatIdVariants
    where toJSON (PostPromoteChatMemberRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostPromoteChatMemberRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostPromoteChatMemberRequestBodyChatIdVariants
    where parseJSON val = case (PostPromoteChatMemberRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostPromoteChatMemberRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postPromoteChatMember'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPromoteChatMemberResponseError' is used.
data PostPromoteChatMemberResponse =
   PostPromoteChatMemberResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPromoteChatMemberResponse200 PostPromoteChatMemberResponseBody200 -- ^ 
  | PostPromoteChatMemberResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/promoteChatMember.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostPromoteChatMemberResponseBody200 = PostPromoteChatMemberResponseBody200 {
  -- | ok
  postPromoteChatMemberResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postPromoteChatMemberResponseBody200Result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPromoteChatMemberResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postPromoteChatMemberResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postPromoteChatMemberResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postPromoteChatMemberResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postPromoteChatMemberResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPromoteChatMemberResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPromoteChatMemberResponseBody200" (\obj -> (GHC.Base.pure PostPromoteChatMemberResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostPromoteChatMemberResponseBody200' with all required fields.
mkPostPromoteChatMemberResponseBody200 :: GHC.Types.Bool -- ^ 'postPromoteChatMemberResponseBody200Ok'
  -> GHC.Types.Bool -- ^ 'postPromoteChatMemberResponseBody200Result'
  -> PostPromoteChatMemberResponseBody200
mkPostPromoteChatMemberResponseBody200 postPromoteChatMemberResponseBody200Ok postPromoteChatMemberResponseBody200Result = PostPromoteChatMemberResponseBody200{postPromoteChatMemberResponseBody200Ok = postPromoteChatMemberResponseBody200Ok,
                                                                                                                                                                postPromoteChatMemberResponseBody200Result = postPromoteChatMemberResponseBody200Result}
-- | > POST /promoteChatMember
-- 
-- The same as 'postPromoteChatMember' but accepts an explicit configuration.
postPromoteChatMemberWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostPromoteChatMemberRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostPromoteChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postPromoteChatMemberWithConfiguration config
                                       body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPromoteChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPromoteChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   PostPromoteChatMemberResponseBody200)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPromoteChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/promoteChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /promoteChatMember
-- 
-- The same as 'postPromoteChatMember' but returns the raw 'Data.ByteString.Char8.ByteString'.
postPromoteChatMemberRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostPromoteChatMemberRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postPromoteChatMemberRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/promoteChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /promoteChatMember
-- 
-- The same as 'postPromoteChatMember' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postPromoteChatMemberWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostPromoteChatMemberRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postPromoteChatMemberWithConfigurationRaw config
                                          body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/promoteChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
