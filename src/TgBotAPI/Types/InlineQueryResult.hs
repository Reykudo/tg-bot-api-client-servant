-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResult
module TgBotAPI.Types.InlineQueryResult where

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
import {-# SOURCE #-} TgBotAPI.Types.InlineKeyboardMarkup
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultArticle
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultAudio
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedAudio
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedDocument
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedGif
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedMpeg4Gif
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedPhoto
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedSticker
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedVideo
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultCachedVoice
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultContact
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultDocument
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultGame
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultGif
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultLocation
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultMpeg4Gif
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultPhoto
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultVenue
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultVideo
import {-# SOURCE #-} TgBotAPI.Types.InlineQueryResultVoice
import {-# SOURCE #-} TgBotAPI.Types.InputMessageContent
import {-# SOURCE #-} TgBotAPI.Types.MessageEntity

-- | Defines the object schema located at @components.schemas.InlineQueryResult.anyOf@ in the specification.
-- 
-- This object represents one result of an inline query. Telegram clients currently support results of the following 20 types:
data InlineQueryResult = InlineQueryResult {
  -- | address: Address of the venue
  inlineQueryResultAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | audio_duration: *Optional*. Audio duration in seconds
  , inlineQueryResultAudioDuration :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | audio_file_id: A valid file identifier for the audio file
  , inlineQueryResultAudioFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | audio_url: A valid URL for the audio file
  , inlineQueryResultAudioUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption: *Optional*. Caption, 0-1024 characters after entities parsing
  , inlineQueryResultCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , inlineQueryResultCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | description: *Optional*. Short description of the result
  , inlineQueryResultDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | document_file_id: A valid file identifier for the file
  , inlineQueryResultDocumentFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | document_url: A valid URL for the file
  , inlineQueryResultDocumentUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name: Contact\'s first name
  , inlineQueryResultFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_id: *Optional*. Foursquare identifier of the venue if known
  , inlineQueryResultFoursquareId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_type: *Optional*. Foursquare type of the venue, if known. (For example, “arts\\_entertainment\/default”, “arts\\_entertainment\/aquarium” or “food\/icecream”.)
  , inlineQueryResultFoursquareType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | game_short_name: Short name of the game
  , inlineQueryResultGameShortName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gif_duration: *Optional*. Duration of the GIF
  , inlineQueryResultGifDuration :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gif_file_id: A valid file identifier for the GIF file
  , inlineQueryResultGifFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gif_height: *Optional*. Height of the GIF
  , inlineQueryResultGifHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gif_url: A valid URL for the GIF file. File size must not exceed 1MB
  , inlineQueryResultGifUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gif_width: *Optional*. Width of the GIF
  , inlineQueryResultGifWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | google_place_id: *Optional*. Google Places identifier of the venue
  , inlineQueryResultGooglePlaceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_type: *Optional*. Google Places type of the venue. (See [supported types](https:\/\/developers.google.com\/places\/web-service\/supported_types).)
  , inlineQueryResultGooglePlaceType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | heading: *Optional*. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  , inlineQueryResultHeading :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | hide_url: *Optional*. Pass *True*, if you don\'t want the URL to be shown in the message
  , inlineQueryResultHideUrl :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | horizontal_accuracy: *Optional*. The radius of uncertainty for the location, measured in meters; 0-1500
  , inlineQueryResultHorizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | id: Unique identifier for this result, 1-64 bytes
  , inlineQueryResultId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | last_name: *Optional*. Contact\'s last name
  , inlineQueryResultLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Location latitude in degrees
  , inlineQueryResultLatitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | live_period: *Optional*. Period in seconds for which the location can be updated, should be between 60 and 86400.
  , inlineQueryResultLivePeriod :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | longitude: Location longitude in degrees
  , inlineQueryResultLongitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | mime_type: Mime type of the content of the file, either “application\/pdf” or “application\/zip”
  , inlineQueryResultMimeType :: (GHC.Maybe.Maybe InlineQueryResultMimeType)
  -- | mpeg4_duration: *Optional*. Video duration
  , inlineQueryResultMpeg4Duration :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | mpeg4_file_id: A valid file identifier for the MP4 file
  , inlineQueryResultMpeg4FileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mpeg4_height: *Optional*. Video height
  , inlineQueryResultMpeg4Height :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | mpeg4_url: A valid URL for the MP4 file. File size must not exceed 1MB
  , inlineQueryResultMpeg4Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mpeg4_width: *Optional*. Video width
  , inlineQueryResultMpeg4Width :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | parse_mode: *Optional*. Mode for parsing entities in the audio caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inlineQueryResultParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | performer: *Optional*. Performer
  , inlineQueryResultPerformer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone_number: Contact\'s phone number
  , inlineQueryResultPhoneNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_file_id: A valid file identifier of the photo
  , inlineQueryResultPhotoFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_height: *Optional*. Height of the photo
  , inlineQueryResultPhotoHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_url: A valid URL of the photo. Photo must be in **jpeg** format. Photo size must not exceed 5MB
  , inlineQueryResultPhotoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_width: *Optional*. Width of the photo
  , inlineQueryResultPhotoWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | proximity_alert_radius: *Optional*. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , inlineQueryResultProximityAlertRadius :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | sticker_file_id: A valid file identifier of the sticker
  , inlineQueryResultStickerFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_height: *Optional*. Thumbnail height
  , inlineQueryResultThumbHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | thumb_mime_type: *Optional*. MIME type of the thumbnail, must be one of “image\/jpeg”, “image\/gif”, or “video\/mp4”. Defaults to “image\/jpeg”
  , inlineQueryResultThumbMimeType :: (GHC.Maybe.Maybe InlineQueryResultThumbMimeType)
  -- | thumb_url: *Optional*. Url of the thumbnail for the result
  , inlineQueryResultThumbUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_width: *Optional*. Thumbnail width
  , inlineQueryResultThumbWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: Title for the result
  , inlineQueryResultTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Type of the result, must be *audio*
  , inlineQueryResultType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: *Optional*. URL of the result
  , inlineQueryResultUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | vcard: *Optional*. Additional data about the contact in the form of a [vCard](https:\/\/en.wikipedia.org\/wiki\/VCard), 0-2048 bytes
  , inlineQueryResultVcard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | video_duration: *Optional*. Video duration in seconds
  , inlineQueryResultVideoDuration :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | video_file_id: A valid file identifier for the video file
  , inlineQueryResultVideoFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | video_height: *Optional*. Video height
  , inlineQueryResultVideoHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | video_url: A valid URL for the embedded video player or video file
  , inlineQueryResultVideoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | video_width: *Optional*. Video width
  , inlineQueryResultVideoWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | voice_duration: *Optional*. Recording duration in seconds
  , inlineQueryResultVoiceDuration :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | voice_file_id: A valid file identifier for the voice message
  , inlineQueryResultVoiceFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | voice_url: A valid URL for the voice recording
  , inlineQueryResultVoiceUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResult
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= inlineQueryResultAddress obj : "audio_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioDuration obj : "audio_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioFileId obj : "audio_url" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioUrl obj : "caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCaptionEntities obj : "description" Data.Aeson.Types.ToJSON..= inlineQueryResultDescription obj : "document_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultDocumentFileId obj : "document_url" Data.Aeson.Types.ToJSON..= inlineQueryResultDocumentUrl obj : "first_name" Data.Aeson.Types.ToJSON..= inlineQueryResultFirstName obj : "foursquare_id" Data.Aeson.Types.ToJSON..= inlineQueryResultFoursquareId obj : "foursquare_type" Data.Aeson.Types.ToJSON..= inlineQueryResultFoursquareType obj : "game_short_name" Data.Aeson.Types.ToJSON..= inlineQueryResultGameShortName obj : "gif_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultGifDuration obj : "gif_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultGifFileId obj : "gif_height" Data.Aeson.Types.ToJSON..= inlineQueryResultGifHeight obj : "gif_url" Data.Aeson.Types.ToJSON..= inlineQueryResultGifUrl obj : "gif_width" Data.Aeson.Types.ToJSON..= inlineQueryResultGifWidth obj : "google_place_id" Data.Aeson.Types.ToJSON..= inlineQueryResultGooglePlaceId obj : "google_place_type" Data.Aeson.Types.ToJSON..= inlineQueryResultGooglePlaceType obj : "heading" Data.Aeson.Types.ToJSON..= inlineQueryResultHeading obj : "hide_url" Data.Aeson.Types.ToJSON..= inlineQueryResultHideUrl obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= inlineQueryResultHorizontalAccuracy obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultInputMessageContent obj : "last_name" Data.Aeson.Types.ToJSON..= inlineQueryResultLastName obj : "latitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLatitude obj : "live_period" Data.Aeson.Types.ToJSON..= inlineQueryResultLivePeriod obj : "longitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLongitude obj : "mime_type" Data.Aeson.Types.ToJSON..= inlineQueryResultMimeType obj : "mpeg4_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Duration obj : "mpeg4_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4FileId obj : "mpeg4_height" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Height obj : "mpeg4_url" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Url obj : "mpeg4_width" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Width obj : "parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultParseMode obj : "performer" Data.Aeson.Types.ToJSON..= inlineQueryResultPerformer obj : "phone_number" Data.Aeson.Types.ToJSON..= inlineQueryResultPhoneNumber obj : "photo_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoFileId obj : "photo_height" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoHeight obj : "photo_url" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoWidth obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= inlineQueryResultProximityAlertRadius obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultReplyMarkup obj : "sticker_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultStickerFileId obj : "thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbHeight obj : "thumb_mime_type" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbMimeType obj : "thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbUrl obj : "thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbWidth obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultType obj : "url" Data.Aeson.Types.ToJSON..= inlineQueryResultUrl obj : "vcard" Data.Aeson.Types.ToJSON..= inlineQueryResultVcard obj : "video_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoDuration obj : "video_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoFileId obj : "video_height" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoHeight obj : "video_url" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoUrl obj : "video_width" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoWidth obj : "voice_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultVoiceDuration obj : "voice_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVoiceFileId obj : "voice_url" Data.Aeson.Types.ToJSON..= inlineQueryResultVoiceUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= inlineQueryResultAddress obj) GHC.Base.<> (("audio_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioDuration obj) GHC.Base.<> (("audio_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioFileId obj) GHC.Base.<> (("audio_url" Data.Aeson.Types.ToJSON..= inlineQueryResultAudioUrl obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultCaptionEntities obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= inlineQueryResultDescription obj) GHC.Base.<> (("document_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultDocumentFileId obj) GHC.Base.<> (("document_url" Data.Aeson.Types.ToJSON..= inlineQueryResultDocumentUrl obj) GHC.Base.<> (("first_name" Data.Aeson.Types.ToJSON..= inlineQueryResultFirstName obj) GHC.Base.<> (("foursquare_id" Data.Aeson.Types.ToJSON..= inlineQueryResultFoursquareId obj) GHC.Base.<> (("foursquare_type" Data.Aeson.Types.ToJSON..= inlineQueryResultFoursquareType obj) GHC.Base.<> (("game_short_name" Data.Aeson.Types.ToJSON..= inlineQueryResultGameShortName obj) GHC.Base.<> (("gif_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultGifDuration obj) GHC.Base.<> (("gif_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultGifFileId obj) GHC.Base.<> (("gif_height" Data.Aeson.Types.ToJSON..= inlineQueryResultGifHeight obj) GHC.Base.<> (("gif_url" Data.Aeson.Types.ToJSON..= inlineQueryResultGifUrl obj) GHC.Base.<> (("gif_width" Data.Aeson.Types.ToJSON..= inlineQueryResultGifWidth obj) GHC.Base.<> (("google_place_id" Data.Aeson.Types.ToJSON..= inlineQueryResultGooglePlaceId obj) GHC.Base.<> (("google_place_type" Data.Aeson.Types.ToJSON..= inlineQueryResultGooglePlaceType obj) GHC.Base.<> (("heading" Data.Aeson.Types.ToJSON..= inlineQueryResultHeading obj) GHC.Base.<> (("hide_url" Data.Aeson.Types.ToJSON..= inlineQueryResultHideUrl obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= inlineQueryResultHorizontalAccuracy obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultInputMessageContent obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= inlineQueryResultLastName obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLatitude obj) GHC.Base.<> (("live_period" Data.Aeson.Types.ToJSON..= inlineQueryResultLivePeriod obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLongitude obj) GHC.Base.<> (("mime_type" Data.Aeson.Types.ToJSON..= inlineQueryResultMimeType obj) GHC.Base.<> (("mpeg4_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Duration obj) GHC.Base.<> (("mpeg4_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4FileId obj) GHC.Base.<> (("mpeg4_height" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Height obj) GHC.Base.<> (("mpeg4_url" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Url obj) GHC.Base.<> (("mpeg4_width" Data.Aeson.Types.ToJSON..= inlineQueryResultMpeg4Width obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultParseMode obj) GHC.Base.<> (("performer" Data.Aeson.Types.ToJSON..= inlineQueryResultPerformer obj) GHC.Base.<> (("phone_number" Data.Aeson.Types.ToJSON..= inlineQueryResultPhoneNumber obj) GHC.Base.<> (("photo_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoFileId obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoHeight obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoWidth obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= inlineQueryResultProximityAlertRadius obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultReplyMarkup obj) GHC.Base.<> (("sticker_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultStickerFileId obj) GHC.Base.<> (("thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbHeight obj) GHC.Base.<> (("thumb_mime_type" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbMimeType obj) GHC.Base.<> (("thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbUrl obj) GHC.Base.<> (("thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultThumbWidth obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultTitle obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= inlineQueryResultType obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= inlineQueryResultUrl obj) GHC.Base.<> (("vcard" Data.Aeson.Types.ToJSON..= inlineQueryResultVcard obj) GHC.Base.<> (("video_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoDuration obj) GHC.Base.<> (("video_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoFileId obj) GHC.Base.<> (("video_height" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoHeight obj) GHC.Base.<> (("video_url" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoUrl obj) GHC.Base.<> (("video_width" Data.Aeson.Types.ToJSON..= inlineQueryResultVideoWidth obj) GHC.Base.<> (("voice_duration" Data.Aeson.Types.ToJSON..= inlineQueryResultVoiceDuration obj) GHC.Base.<> (("voice_file_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVoiceFileId obj) GHC.Base.<> ("voice_url" Data.Aeson.Types.ToJSON..= inlineQueryResultVoiceUrl obj)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResult
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResult" (\obj -> ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure InlineQueryResult GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "game_short_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hide_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "live_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mime_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sticker_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_mime_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vcard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_url"))
-- | Create a new 'InlineQueryResult' with all required fields.
mkInlineQueryResult :: InlineQueryResult
mkInlineQueryResult = InlineQueryResult{inlineQueryResultAddress = GHC.Maybe.Nothing,
                                        inlineQueryResultAudioDuration = GHC.Maybe.Nothing,
                                        inlineQueryResultAudioFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultAudioUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultCaption = GHC.Maybe.Nothing,
                                        inlineQueryResultCaptionEntities = GHC.Maybe.Nothing,
                                        inlineQueryResultDescription = GHC.Maybe.Nothing,
                                        inlineQueryResultDocumentFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultDocumentUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultFirstName = GHC.Maybe.Nothing,
                                        inlineQueryResultFoursquareId = GHC.Maybe.Nothing,
                                        inlineQueryResultFoursquareType = GHC.Maybe.Nothing,
                                        inlineQueryResultGameShortName = GHC.Maybe.Nothing,
                                        inlineQueryResultGifDuration = GHC.Maybe.Nothing,
                                        inlineQueryResultGifFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultGifHeight = GHC.Maybe.Nothing,
                                        inlineQueryResultGifUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultGifWidth = GHC.Maybe.Nothing,
                                        inlineQueryResultGooglePlaceId = GHC.Maybe.Nothing,
                                        inlineQueryResultGooglePlaceType = GHC.Maybe.Nothing,
                                        inlineQueryResultHeading = GHC.Maybe.Nothing,
                                        inlineQueryResultHideUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultHorizontalAccuracy = GHC.Maybe.Nothing,
                                        inlineQueryResultId = GHC.Maybe.Nothing,
                                        inlineQueryResultInputMessageContent = GHC.Maybe.Nothing,
                                        inlineQueryResultLastName = GHC.Maybe.Nothing,
                                        inlineQueryResultLatitude = GHC.Maybe.Nothing,
                                        inlineQueryResultLivePeriod = GHC.Maybe.Nothing,
                                        inlineQueryResultLongitude = GHC.Maybe.Nothing,
                                        inlineQueryResultMimeType = GHC.Maybe.Nothing,
                                        inlineQueryResultMpeg4Duration = GHC.Maybe.Nothing,
                                        inlineQueryResultMpeg4FileId = GHC.Maybe.Nothing,
                                        inlineQueryResultMpeg4Height = GHC.Maybe.Nothing,
                                        inlineQueryResultMpeg4Url = GHC.Maybe.Nothing,
                                        inlineQueryResultMpeg4Width = GHC.Maybe.Nothing,
                                        inlineQueryResultParseMode = GHC.Maybe.Nothing,
                                        inlineQueryResultPerformer = GHC.Maybe.Nothing,
                                        inlineQueryResultPhoneNumber = GHC.Maybe.Nothing,
                                        inlineQueryResultPhotoFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultPhotoHeight = GHC.Maybe.Nothing,
                                        inlineQueryResultPhotoUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultPhotoWidth = GHC.Maybe.Nothing,
                                        inlineQueryResultProximityAlertRadius = GHC.Maybe.Nothing,
                                        inlineQueryResultReplyMarkup = GHC.Maybe.Nothing,
                                        inlineQueryResultStickerFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultThumbHeight = GHC.Maybe.Nothing,
                                        inlineQueryResultThumbMimeType = GHC.Maybe.Nothing,
                                        inlineQueryResultThumbUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultThumbWidth = GHC.Maybe.Nothing,
                                        inlineQueryResultTitle = GHC.Maybe.Nothing,
                                        inlineQueryResultType = GHC.Maybe.Nothing,
                                        inlineQueryResultUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultVcard = GHC.Maybe.Nothing,
                                        inlineQueryResultVideoDuration = GHC.Maybe.Nothing,
                                        inlineQueryResultVideoFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultVideoHeight = GHC.Maybe.Nothing,
                                        inlineQueryResultVideoUrl = GHC.Maybe.Nothing,
                                        inlineQueryResultVideoWidth = GHC.Maybe.Nothing,
                                        inlineQueryResultVoiceDuration = GHC.Maybe.Nothing,
                                        inlineQueryResultVoiceFileId = GHC.Maybe.Nothing,
                                        inlineQueryResultVoiceUrl = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.InlineQueryResult.anyOf.properties.mime_type@ in the specification.
-- 
-- Mime type of the content of the file, either “application\/pdf” or “application\/zip”
data InlineQueryResultMimeType =
   InlineQueryResultMimeTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | InlineQueryResultMimeTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | InlineQueryResultMimeTypeEnumApplicationPdf -- ^ Represents the JSON value @"application/pdf"@
  | InlineQueryResultMimeTypeEnumApplicationZip -- ^ Represents the JSON value @"application/zip"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultMimeType
    where toJSON (InlineQueryResultMimeTypeOther val) = val
          toJSON (InlineQueryResultMimeTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (InlineQueryResultMimeTypeEnumApplicationPdf) = "application/pdf"
          toJSON (InlineQueryResultMimeTypeEnumApplicationZip) = "application/zip"
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultMimeType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "application/pdf" -> InlineQueryResultMimeTypeEnumApplicationPdf
                                            | val GHC.Classes.== "application/zip" -> InlineQueryResultMimeTypeEnumApplicationZip
                                            | GHC.Base.otherwise -> InlineQueryResultMimeTypeOther val)
-- | Defines the enum schema located at @components.schemas.InlineQueryResult.anyOf.properties.thumb_mime_type@ in the specification.
-- 
-- *Optional*. MIME type of the thumbnail, must be one of “image\/jpeg”, “image\/gif”, or “video\/mp4”. Defaults to “image\/jpeg”
data InlineQueryResultThumbMimeType =
   InlineQueryResultThumbMimeTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | InlineQueryResultThumbMimeTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | InlineQueryResultThumbMimeTypeEnumImageJpeg -- ^ Represents the JSON value @"image/jpeg"@
  | InlineQueryResultThumbMimeTypeEnumImageGif -- ^ Represents the JSON value @"image/gif"@
  | InlineQueryResultThumbMimeTypeEnumVideoMp4 -- ^ Represents the JSON value @"video/mp4"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultThumbMimeType
    where toJSON (InlineQueryResultThumbMimeTypeOther val) = val
          toJSON (InlineQueryResultThumbMimeTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (InlineQueryResultThumbMimeTypeEnumImageJpeg) = "image/jpeg"
          toJSON (InlineQueryResultThumbMimeTypeEnumImageGif) = "image/gif"
          toJSON (InlineQueryResultThumbMimeTypeEnumVideoMp4) = "video/mp4"
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultThumbMimeType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "image/jpeg" -> InlineQueryResultThumbMimeTypeEnumImageJpeg
                                            | val GHC.Classes.== "image/gif" -> InlineQueryResultThumbMimeTypeEnumImageGif
                                            | val GHC.Classes.== "video/mp4" -> InlineQueryResultThumbMimeTypeEnumVideoMp4
                                            | GHC.Base.otherwise -> InlineQueryResultThumbMimeTypeOther val)
