-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InputInvoiceMessageContent
module TgBotAPI.Types.InputInvoiceMessageContent where

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
import {-# SOURCE #-} TgBotAPI.Types.LabeledPrice

-- | Defines the object schema located at @components.schemas.InputInvoiceMessageContent@ in the specification.
-- 
-- Represents the [content](https:\/\/core.telegram.org\/bots\/api\/\#inputmessagecontent) of an invoice message to be sent as the result of an inline query.
data InputInvoiceMessageContent = InputInvoiceMessageContent {
  -- | currency: Three-letter ISO 4217 currency code, see [more on currencies](\/bots\/payments\#supported-currencies)
  inputInvoiceMessageContentCurrency :: Data.Text.Internal.Text
  -- | description: Product description, 1-255 characters
  , inputInvoiceMessageContentDescription :: Data.Text.Internal.Text
  -- | is_flexible: *Optional*. Pass *True*, if the final price depends on the shipping method
  , inputInvoiceMessageContentIsFlexible :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | max_tip_amount: *Optional*. The maximum accepted amount for tips in the *smallest units* of the currency (integer, **not** float\/double). For example, for a maximum tip of \`US\$ 1.45\` pass \`max_tip_amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
  , inputInvoiceMessageContentMaxTipAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | need_email: *Optional*. Pass *True*, if you require the user\'s email address to complete the order
  , inputInvoiceMessageContentNeedEmail :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_name: *Optional*. Pass *True*, if you require the user\'s full name to complete the order
  , inputInvoiceMessageContentNeedName :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_phone_number: *Optional*. Pass *True*, if you require the user\'s phone number to complete the order
  , inputInvoiceMessageContentNeedPhoneNumber :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_shipping_address: *Optional*. Pass *True*, if you require the user\'s shipping address to complete the order
  , inputInvoiceMessageContentNeedShippingAddress :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payload: Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
  , inputInvoiceMessageContentPayload :: Data.Text.Internal.Text
  -- | photo_height: *Optional*. Photo height
  , inputInvoiceMessageContentPhotoHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_size: *Optional*. Photo size
  , inputInvoiceMessageContentPhotoSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_url: *Optional*. URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
  , inputInvoiceMessageContentPhotoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_width: *Optional*. Photo width
  , inputInvoiceMessageContentPhotoWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | prices: Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  , inputInvoiceMessageContentPrices :: ([LabeledPrice])
  -- | provider_data: *Optional*. A JSON-serialized object for data about the invoice, which will be shared with the payment provider. A detailed description of the required fields should be provided by the payment provider.
  , inputInvoiceMessageContentProviderData :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | provider_token: Payment provider token, obtained via [Botfather](https:\/\/t.me\/botfather)
  , inputInvoiceMessageContentProviderToken :: Data.Text.Internal.Text
  -- | send_email_to_provider: *Optional*. Pass *True*, if user\'s email address should be sent to provider
  , inputInvoiceMessageContentSendEmailToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | send_phone_number_to_provider: *Optional*. Pass *True*, if user\'s phone number should be sent to provider
  , inputInvoiceMessageContentSendPhoneNumberToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | suggested_tip_amounts: *Optional*. A JSON-serialized array of suggested amounts of tip in the *smallest units* of the currency (integer, **not** float\/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed *max\\_tip\\_amount*.
  , inputInvoiceMessageContentSuggestedTipAmounts :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | title: Product name, 1-32 characters
  , inputInvoiceMessageContentTitle :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InputInvoiceMessageContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("currency" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentCurrency obj : "description" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentDescription obj : "is_flexible" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentIsFlexible obj : "max_tip_amount" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentMaxTipAmount obj : "need_email" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedEmail obj : "need_name" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedName obj : "need_phone_number" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedPhoneNumber obj : "need_shipping_address" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedShippingAddress obj : "payload" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPayload obj : "photo_height" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoHeight obj : "photo_size" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoSize obj : "photo_url" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoWidth obj : "prices" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPrices obj : "provider_data" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentProviderData obj : "provider_token" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentProviderToken obj : "send_email_to_provider" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentSendEmailToProvider obj : "send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentSendPhoneNumberToProvider obj : "suggested_tip_amounts" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentSuggestedTipAmounts obj : "title" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentTitle obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("currency" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentCurrency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentDescription obj) GHC.Base.<> (("is_flexible" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentIsFlexible obj) GHC.Base.<> (("max_tip_amount" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentMaxTipAmount obj) GHC.Base.<> (("need_email" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedEmail obj) GHC.Base.<> (("need_name" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedName obj) GHC.Base.<> (("need_phone_number" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedPhoneNumber obj) GHC.Base.<> (("need_shipping_address" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentNeedShippingAddress obj) GHC.Base.<> (("payload" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPayload obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoHeight obj) GHC.Base.<> (("photo_size" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoSize obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPhotoWidth obj) GHC.Base.<> (("prices" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentPrices obj) GHC.Base.<> (("provider_data" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentProviderData obj) GHC.Base.<> (("provider_token" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentProviderToken obj) GHC.Base.<> (("send_email_to_provider" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentSendEmailToProvider obj) GHC.Base.<> (("send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentSendPhoneNumberToProvider obj) GHC.Base.<> (("suggested_tip_amounts" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentSuggestedTipAmounts obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= inputInvoiceMessageContentTitle obj))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InputInvoiceMessageContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InputInvoiceMessageContent" (\obj -> (((((((((((((((((((GHC.Base.pure InputInvoiceMessageContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_flexible")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_tip_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "provider_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_email_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_phone_number_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "suggested_tip_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'InputInvoiceMessageContent' with all required fields.
mkInputInvoiceMessageContent :: Data.Text.Internal.Text -- ^ 'inputInvoiceMessageContentCurrency'
  -> Data.Text.Internal.Text -- ^ 'inputInvoiceMessageContentDescription'
  -> Data.Text.Internal.Text -- ^ 'inputInvoiceMessageContentPayload'
  -> [LabeledPrice] -- ^ 'inputInvoiceMessageContentPrices'
  -> Data.Text.Internal.Text -- ^ 'inputInvoiceMessageContentProviderToken'
  -> Data.Text.Internal.Text -- ^ 'inputInvoiceMessageContentTitle'
  -> InputInvoiceMessageContent
mkInputInvoiceMessageContent inputInvoiceMessageContentCurrency inputInvoiceMessageContentDescription inputInvoiceMessageContentPayload inputInvoiceMessageContentPrices inputInvoiceMessageContentProviderToken inputInvoiceMessageContentTitle = InputInvoiceMessageContent{inputInvoiceMessageContentCurrency = inputInvoiceMessageContentCurrency,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentDescription = inputInvoiceMessageContentDescription,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentIsFlexible = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentMaxTipAmount = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentNeedEmail = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentNeedName = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentNeedPhoneNumber = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentNeedShippingAddress = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentPayload = inputInvoiceMessageContentPayload,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentPhotoHeight = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentPhotoSize = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentPhotoUrl = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentPhotoWidth = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentPrices = inputInvoiceMessageContentPrices,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentProviderData = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentProviderToken = inputInvoiceMessageContentProviderToken,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentSendEmailToProvider = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentSendPhoneNumberToProvider = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentSuggestedTipAmounts = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                              inputInvoiceMessageContentTitle = inputInvoiceMessageContentTitle}
