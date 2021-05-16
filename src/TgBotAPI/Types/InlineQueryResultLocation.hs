-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultLocation
module TgBotAPI.Types.InlineQueryResultLocation where

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
import {-# SOURCE #-} TgBotAPI.Types.InputMessageContent

-- | Defines the object schema located at @components.schemas.InlineQueryResultLocation@ in the specification.
-- 
-- Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the location.
data InlineQueryResultLocation = InlineQueryResultLocation {
  -- | heading: *Optional*. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  inlineQueryResultLocationHeading :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | horizontal_accuracy: *Optional*. The radius of uncertainty for the location, measured in meters; 0-1500
  , inlineQueryResultLocationHorizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | id: Unique identifier for this result, 1-64 Bytes
  , inlineQueryResultLocationId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultLocationInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | latitude: Location latitude in degrees
  , inlineQueryResultLocationLatitude :: GHC.Types.Double
  -- | live_period: *Optional*. Period in seconds for which the location can be updated, should be between 60 and 86400.
  , inlineQueryResultLocationLivePeriod :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | longitude: Location longitude in degrees
  , inlineQueryResultLocationLongitude :: GHC.Types.Double
  -- | proximity_alert_radius: *Optional*. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , inlineQueryResultLocationProximityAlertRadius :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultLocationReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | thumb_height: *Optional*. Thumbnail height
  , inlineQueryResultLocationThumbHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | thumb_url: *Optional*. Url of the thumbnail for the result
  , inlineQueryResultLocationThumbUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_width: *Optional*. Thumbnail width
  , inlineQueryResultLocationThumbWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: Location title
  , inlineQueryResultLocationTitle :: Data.Text.Internal.Text
  -- | type: Type of the result, must be *location*
  , inlineQueryResultLocationType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultLocation
    where toJSON obj = Data.Aeson.Types.Internal.object ("heading" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationHeading obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationHorizontalAccuracy obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationInputMessageContent obj : "latitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationLatitude obj : "live_period" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationLivePeriod obj : "longitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationLongitude obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationProximityAlertRadius obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationReplyMarkup obj : "thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationThumbHeight obj : "thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationThumbUrl obj : "thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationThumbWidth obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("heading" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationHeading obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationHorizontalAccuracy obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationInputMessageContent obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationLatitude obj) GHC.Base.<> (("live_period" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationLivePeriod obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationLongitude obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationProximityAlertRadius obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationReplyMarkup obj) GHC.Base.<> (("thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationThumbHeight obj) GHC.Base.<> (("thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationThumbUrl obj) GHC.Base.<> (("thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationThumbWidth obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationTitle obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= inlineQueryResultLocationType obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultLocation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultLocation" (\obj -> (((((((((((((GHC.Base.pure InlineQueryResultLocation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "live_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultLocation' with all required fields.
mkInlineQueryResultLocation :: Data.Text.Internal.Text -- ^ 'inlineQueryResultLocationId'
  -> GHC.Types.Double -- ^ 'inlineQueryResultLocationLatitude'
  -> GHC.Types.Double -- ^ 'inlineQueryResultLocationLongitude'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultLocationTitle'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultLocationType'
  -> InlineQueryResultLocation
mkInlineQueryResultLocation inlineQueryResultLocationId inlineQueryResultLocationLatitude inlineQueryResultLocationLongitude inlineQueryResultLocationTitle inlineQueryResultLocationType = InlineQueryResultLocation{inlineQueryResultLocationHeading = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationHorizontalAccuracy = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationId = inlineQueryResultLocationId,
                                                                                                                                                                                                                      inlineQueryResultLocationInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationLatitude = inlineQueryResultLocationLatitude,
                                                                                                                                                                                                                      inlineQueryResultLocationLivePeriod = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationLongitude = inlineQueryResultLocationLongitude,
                                                                                                                                                                                                                      inlineQueryResultLocationProximityAlertRadius = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationThumbHeight = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationThumbUrl = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationThumbWidth = GHC.Maybe.Nothing,
                                                                                                                                                                                                                      inlineQueryResultLocationTitle = inlineQueryResultLocationTitle,
                                                                                                                                                                                                                      inlineQueryResultLocationType = inlineQueryResultLocationType}
