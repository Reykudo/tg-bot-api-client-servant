-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ReplyKeyboardMarkup
module TgBotAPI.Types.ReplyKeyboardMarkup where

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
import qualified Data.Bifunctor
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import {-# SOURCE #-} TgBotAPI.Types.KeyboardButton

-- | Defines the object schema located at @components.schemas.ReplyKeyboardMarkup@ in the specification.
-- 
-- This object represents a [custom keyboard](https:\/\/core.telegram.org\/bots\#keyboards) with reply options (see [Introduction to bots](https:\/\/core.telegram.org\/bots\#keyboards) for details and examples).
data ReplyKeyboardMarkup = ReplyKeyboardMarkup {
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  replyKeyboardMarkupKeyboard :: ([[KeyboardButton]])
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , replyKeyboardMarkupOneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , replyKeyboardMarkupResizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , replyKeyboardMarkupSelective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReplyKeyboardMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupKeyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupOneTimeKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupResizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupSelective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupKeyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupOneTimeKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupResizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= replyKeyboardMarkupSelective obj))))
instance Data.Aeson.Types.FromJSON.FromJSON ReplyKeyboardMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReplyKeyboardMarkup" (\obj -> (((GHC.Base.pure ReplyKeyboardMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'ReplyKeyboardMarkup' with all required fields.
mkReplyKeyboardMarkup :: [[KeyboardButton]] -- ^ 'replyKeyboardMarkupKeyboard'
  -> ReplyKeyboardMarkup
mkReplyKeyboardMarkup replyKeyboardMarkupKeyboard = ReplyKeyboardMarkup{replyKeyboardMarkupKeyboard = replyKeyboardMarkupKeyboard,
                                                                        replyKeyboardMarkupOneTimeKeyboard = GHC.Maybe.Nothing,
                                                                        replyKeyboardMarkupResizeKeyboard = GHC.Maybe.Nothing,
                                                                        replyKeyboardMarkupSelective = GHC.Maybe.Nothing}
