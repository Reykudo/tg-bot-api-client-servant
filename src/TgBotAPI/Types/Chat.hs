-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema Chat
module TgBotAPI.Types.Chat where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import  {-# SOURCE #-}  TgBotAPI.Types.ChatLocation (ChatLocation)
import  {-# SOURCE #-}  TgBotAPI.Types.ChatPermissions (ChatPermissions)
import  {-# SOURCE #-}  TgBotAPI.Types.ChatPhoto (ChatPhoto)
import  {-# SOURCE #-}  TgBotAPI.Types.Message (Message)

-- | Defines the object schema located at @components.schemas.Chat@ in the specification.
-- 
-- This object represents a chat.
data Chat = Chat {
  -- | bio: *Optional*. Bio of the other party in a private chat. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  bio :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | can_set_sticker_set: *Optional*. True, if the bot can change the group sticker set. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , canSetStickerSet :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | description: *Optional*. Description, for groups, supergroups and channel chats. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name: *Optional*. First name of the other party in a private chat
  , firstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for this chat. This number may have more than 32 significant bits and some programming languages may have difficulty\/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  , id :: GHC.Int.Int64
  -- | invite_link: *Optional*. Primary invite link, for groups, supergroups and channel chats. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , inviteLink :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last_name: *Optional*. Last name of the other party in a private chat
  , lastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | linked_chat_id: *Optional*. Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa; for supergroups and channel chats. This identifier may be greater than 32 bits and some programming languages may have difficulty\/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , linkedChatId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | location: Represents a location to which a chat is connected.
  , location :: (GHC.Maybe.Maybe ChatLocation)
  -- | message_auto_delete_time: *Optional*. The time after which all messages sent to the chat will be automatically deleted; in seconds. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , messageAutoDeleteTime :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | permissions: Describes actions that a non-administrator user is allowed to take in a chat.
  , permissions :: (GHC.Maybe.Maybe ChatPermissions)
  -- | photo: This object represents a chat photo.
  , photo :: (GHC.Maybe.Maybe ChatPhoto)
  -- | pinned_message: This object represents a message.
  , pinnedMessage :: (GHC.Maybe.Maybe Message)
  -- | slow_mode_delay: *Optional*. For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , slowModeDelay :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | sticker_set_name: *Optional*. For supergroups, name of group sticker set. Returned only in [getChat](https:\/\/core.telegram.org\/bots\/api\/\#getchat).
  , stickerSetName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | title: *Optional*. Title, for supergroups, channels and group chats
  , title :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Type of chat, can be either “private”, “group”, “supergroup” or “channel”
  , type' :: Type
  -- | username: *Optional*. Username, for private chats, supergroups and channels if available
  , username :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Chat
    where toJSON obj = Data.Aeson.Types.Internal.object ("bio" Data.Aeson.Types.ToJSON..= bio obj : "can_set_sticker_set" Data.Aeson.Types.ToJSON..= canSetStickerSet obj : "description" Data.Aeson.Types.ToJSON..= description obj : "first_name" Data.Aeson.Types.ToJSON..= firstName obj : "id" Data.Aeson.Types.ToJSON..= id obj : "invite_link" Data.Aeson.Types.ToJSON..= inviteLink obj : "last_name" Data.Aeson.Types.ToJSON..= lastName obj : "linked_chat_id" Data.Aeson.Types.ToJSON..= linkedChatId obj : "location" Data.Aeson.Types.ToJSON..= location obj : "message_auto_delete_time" Data.Aeson.Types.ToJSON..= messageAutoDeleteTime obj : "permissions" Data.Aeson.Types.ToJSON..= permissions obj : "photo" Data.Aeson.Types.ToJSON..= photo obj : "pinned_message" Data.Aeson.Types.ToJSON..= pinnedMessage obj : "slow_mode_delay" Data.Aeson.Types.ToJSON..= slowModeDelay obj : "sticker_set_name" Data.Aeson.Types.ToJSON..= stickerSetName obj : "title" Data.Aeson.Types.ToJSON..= title obj : "type" Data.Aeson.Types.ToJSON..= type' obj : "username" Data.Aeson.Types.ToJSON..= username obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bio" Data.Aeson.Types.ToJSON..= bio obj) GHC.Base.<> (("can_set_sticker_set" Data.Aeson.Types.ToJSON..= canSetStickerSet obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("first_name" Data.Aeson.Types.ToJSON..= firstName obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= id obj) GHC.Base.<> (("invite_link" Data.Aeson.Types.ToJSON..= inviteLink obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= lastName obj) GHC.Base.<> (("linked_chat_id" Data.Aeson.Types.ToJSON..= linkedChatId obj) GHC.Base.<> (("location" Data.Aeson.Types.ToJSON..= location obj) GHC.Base.<> (("message_auto_delete_time" Data.Aeson.Types.ToJSON..= messageAutoDeleteTime obj) GHC.Base.<> (("permissions" Data.Aeson.Types.ToJSON..= permissions obj) GHC.Base.<> (("photo" Data.Aeson.Types.ToJSON..= photo obj) GHC.Base.<> (("pinned_message" Data.Aeson.Types.ToJSON..= pinnedMessage obj) GHC.Base.<> (("slow_mode_delay" Data.Aeson.Types.ToJSON..= slowModeDelay obj) GHC.Base.<> (("sticker_set_name" Data.Aeson.Types.ToJSON..= stickerSetName obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= title obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= type' obj) GHC.Base.<> ("username" Data.Aeson.Types.ToJSON..= username obj))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Chat
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Chat" (\obj -> (((((((((((((((((GHC.Base.pure Chat GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bio")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_set_sticker_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invite_link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linked_chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_auto_delete_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "permissions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pinned_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "slow_mode_delay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sticker_set_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))
-- | Create a new 'Chat' with all required fields.
mkChat :: GHC.Int.Int64 -- ^ 'id'
  -> Type -- ^ 'type''
  -> Chat
mkChat id type' = Chat{bio = GHC.Maybe.Nothing,
                       canSetStickerSet = GHC.Maybe.Nothing,
                       description = GHC.Maybe.Nothing,
                       firstName = GHC.Maybe.Nothing,
                       id = id,
                       inviteLink = GHC.Maybe.Nothing,
                       lastName = GHC.Maybe.Nothing,
                       linkedChatId = GHC.Maybe.Nothing,
                       location = GHC.Maybe.Nothing,
                       messageAutoDeleteTime = GHC.Maybe.Nothing,
                       permissions = GHC.Maybe.Nothing,
                       photo = GHC.Maybe.Nothing,
                       pinnedMessage = GHC.Maybe.Nothing,
                       slowModeDelay = GHC.Maybe.Nothing,
                       stickerSetName = GHC.Maybe.Nothing,
                       title = GHC.Maybe.Nothing,
                       type' = type',
                       username = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.Chat.properties.type@ in the specification.
-- 
-- Type of chat, can be either “private”, “group”, “supergroup” or “channel”
data Type =
   TypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TypeEnumPrivate -- ^ Represents the JSON value @"private"@
  | TypeEnumGroup -- ^ Represents the JSON value @"group"@
  | TypeEnumSupergroup -- ^ Represents the JSON value @"supergroup"@
  | TypeEnumChannel -- ^ Represents the JSON value @"channel"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Type
    where toJSON (TypeOther val) = val
          toJSON (TypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (TypeEnumPrivate) = "private"
          toJSON (TypeEnumGroup) = "group"
          toJSON (TypeEnumSupergroup) = "supergroup"
          toJSON (TypeEnumChannel) = "channel"
instance Data.Aeson.Types.FromJSON.FromJSON Type
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "private" -> TypeEnumPrivate
                                            | val GHC.Classes.== "group" -> TypeEnumGroup
                                            | val GHC.Classes.== "supergroup" -> TypeEnumSupergroup
                                            | val GHC.Classes.== "channel" -> TypeEnumChannel
                                            | GHC.Base.otherwise -> TypeOther val)
