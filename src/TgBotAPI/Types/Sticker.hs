-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Sticker
module TgBotAPI.Types.Sticker where

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
import {-# SOURCE #-} TgBotAPI.Types.MaskPosition
import {-# SOURCE #-} TgBotAPI.Types.PhotoSize

-- | Defines the object schema located at @components.schemas.Sticker@ in the specification.
-- 
-- This object represents a sticker.
data Sticker = Sticker {
  -- | emoji: *Optional*. Emoji associated with the sticker
  stickerEmoji :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | file_id: Identifier for this file, which can be used to download or reuse the file
  , stickerFileId :: Data.Text.Internal.Text
  -- | file_size: *Optional*. File size
  , stickerFileSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | file_unique_id: Unique identifier for this file, which is supposed to be the same over time and for different bots. Can\'t be used to download or reuse the file.
  , stickerFileUniqueId :: Data.Text.Internal.Text
  -- | height: Sticker height
  , stickerHeight :: GHC.Types.Int
  -- | is_animated: *True*, if the sticker is [animated](https:\/\/telegram.org\/blog\/animated-stickers)
  , stickerIsAnimated :: GHC.Types.Bool
  -- | mask_position: This object describes the position on faces where a mask should be placed by default.
  , stickerMaskPosition :: (GHC.Maybe.Maybe MaskPosition)
  -- | set_name: *Optional*. Name of the sticker set to which the sticker belongs
  , stickerSetName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb: This object represents one size of a photo or a [file](https:\/\/core.telegram.org\/bots\/api\/\#document) \/ [sticker](https:\/\/core.telegram.org\/bots\/api\/\#sticker) thumbnail.
  , stickerThumb :: (GHC.Maybe.Maybe PhotoSize)
  -- | width: Sticker width
  , stickerWidth :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Sticker
    where toJSON obj = Data.Aeson.Types.Internal.object ("emoji" Data.Aeson.Types.ToJSON..= stickerEmoji obj : "file_id" Data.Aeson.Types.ToJSON..= stickerFileId obj : "file_size" Data.Aeson.Types.ToJSON..= stickerFileSize obj : "file_unique_id" Data.Aeson.Types.ToJSON..= stickerFileUniqueId obj : "height" Data.Aeson.Types.ToJSON..= stickerHeight obj : "is_animated" Data.Aeson.Types.ToJSON..= stickerIsAnimated obj : "mask_position" Data.Aeson.Types.ToJSON..= stickerMaskPosition obj : "set_name" Data.Aeson.Types.ToJSON..= stickerSetName obj : "thumb" Data.Aeson.Types.ToJSON..= stickerThumb obj : "width" Data.Aeson.Types.ToJSON..= stickerWidth obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("emoji" Data.Aeson.Types.ToJSON..= stickerEmoji obj) GHC.Base.<> (("file_id" Data.Aeson.Types.ToJSON..= stickerFileId obj) GHC.Base.<> (("file_size" Data.Aeson.Types.ToJSON..= stickerFileSize obj) GHC.Base.<> (("file_unique_id" Data.Aeson.Types.ToJSON..= stickerFileUniqueId obj) GHC.Base.<> (("height" Data.Aeson.Types.ToJSON..= stickerHeight obj) GHC.Base.<> (("is_animated" Data.Aeson.Types.ToJSON..= stickerIsAnimated obj) GHC.Base.<> (("mask_position" Data.Aeson.Types.ToJSON..= stickerMaskPosition obj) GHC.Base.<> (("set_name" Data.Aeson.Types.ToJSON..= stickerSetName obj) GHC.Base.<> (("thumb" Data.Aeson.Types.ToJSON..= stickerThumb obj) GHC.Base.<> ("width" Data.Aeson.Types.ToJSON..= stickerWidth obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Sticker
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Sticker" (\obj -> (((((((((GHC.Base.pure Sticker GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "emoji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_unique_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_animated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mask_position")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "set_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Create a new 'Sticker' with all required fields.
mkSticker :: Data.Text.Internal.Text -- ^ 'stickerFileId'
  -> Data.Text.Internal.Text -- ^ 'stickerFileUniqueId'
  -> GHC.Types.Int -- ^ 'stickerHeight'
  -> GHC.Types.Bool -- ^ 'stickerIsAnimated'
  -> GHC.Types.Int -- ^ 'stickerWidth'
  -> Sticker
mkSticker stickerFileId stickerFileUniqueId stickerHeight stickerIsAnimated stickerWidth = Sticker{stickerEmoji = GHC.Maybe.Nothing,
                                                                                                   stickerFileId = stickerFileId,
                                                                                                   stickerFileSize = GHC.Maybe.Nothing,
                                                                                                   stickerFileUniqueId = stickerFileUniqueId,
                                                                                                   stickerHeight = stickerHeight,
                                                                                                   stickerIsAnimated = stickerIsAnimated,
                                                                                                   stickerMaskPosition = GHC.Maybe.Nothing,
                                                                                                   stickerSetName = GHC.Maybe.Nothing,
                                                                                                   stickerThumb = GHC.Maybe.Nothing,
                                                                                                   stickerWidth = stickerWidth}
