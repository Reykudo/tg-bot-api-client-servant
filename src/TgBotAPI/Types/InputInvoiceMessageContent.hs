-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

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
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import  {-# SOURCE #-}  TgBotAPI.Types.LabeledPrice (LabeledPrice)

-- | Defines the object schema located at @components.schemas.InputInvoiceMessageContent@ in the specification.
-- 
-- Represents the [content](https:\/\/core.telegram.org\/bots\/api\/\#inputmessagecontent) of an invoice message to be sent as the result of an inline query.
data InputInvoiceMessageContent = InputInvoiceMessageContent {
  -- | currency: Three-letter ISO 4217 currency code, see [more on currencies](\/bots\/payments\#supported-currencies)
  currency :: Data.Text.Internal.Text
  -- | description: Product description, 1-255 characters
  , description :: Data.Text.Internal.Text
  -- | is_flexible: *Optional*. Pass *True*, if the final price depends on the shipping method
  , isFlexible :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | max_tip_amount: *Optional*. The maximum accepted amount for tips in the *smallest units* of the currency (integer, **not** float\/double). For example, for a maximum tip of \`US\$ 1.45\` pass \`max_tip_amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
  , maxTipAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | need_email: *Optional*. Pass *True*, if you require the user\'s email address to complete the order
  , needEmail :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_name: *Optional*. Pass *True*, if you require the user\'s full name to complete the order
  , needName :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_phone_number: *Optional*. Pass *True*, if you require the user\'s phone number to complete the order
  , needPhoneNumber :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_shipping_address: *Optional*. Pass *True*, if you require the user\'s shipping address to complete the order
  , needShippingAddress :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payload: Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
  , payload :: Data.Text.Internal.Text
  -- | photo_height: *Optional*. Photo height
  , photoHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_size: *Optional*. Photo size
  , photoSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_url: *Optional*. URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
  , photoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_width: *Optional*. Photo width
  , photoWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | prices: Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  , prices :: ([LabeledPrice])
  -- | provider_data: *Optional*. A JSON-serialized object for data about the invoice, which will be shared with the payment provider. A detailed description of the required fields should be provided by the payment provider.
  , providerData :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | provider_token: Payment provider token, obtained via [Botfather](https:\/\/t.me\/botfather)
  , providerToken :: Data.Text.Internal.Text
  -- | send_email_to_provider: *Optional*. Pass *True*, if user\'s email address should be sent to provider
  , sendEmailToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | send_phone_number_to_provider: *Optional*. Pass *True*, if user\'s phone number should be sent to provider
  , sendPhoneNumberToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | suggested_tip_amounts: *Optional*. A JSON-serialized array of suggested amounts of tip in the *smallest units* of the currency (integer, **not** float\/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed *max\\_tip\\_amount*.
  , suggestedTipAmounts :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | title: Product name, 1-32 characters
  , title :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InputInvoiceMessageContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("currency" Data.Aeson.Types.ToJSON..= currency obj : "description" Data.Aeson.Types.ToJSON..= description obj : "is_flexible" Data.Aeson.Types.ToJSON..= isFlexible obj : "max_tip_amount" Data.Aeson.Types.ToJSON..= maxTipAmount obj : "need_email" Data.Aeson.Types.ToJSON..= needEmail obj : "need_name" Data.Aeson.Types.ToJSON..= needName obj : "need_phone_number" Data.Aeson.Types.ToJSON..= needPhoneNumber obj : "need_shipping_address" Data.Aeson.Types.ToJSON..= needShippingAddress obj : "payload" Data.Aeson.Types.ToJSON..= payload obj : "photo_height" Data.Aeson.Types.ToJSON..= photoHeight obj : "photo_size" Data.Aeson.Types.ToJSON..= photoSize obj : "photo_url" Data.Aeson.Types.ToJSON..= photoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= photoWidth obj : "prices" Data.Aeson.Types.ToJSON..= prices obj : "provider_data" Data.Aeson.Types.ToJSON..= providerData obj : "provider_token" Data.Aeson.Types.ToJSON..= providerToken obj : "send_email_to_provider" Data.Aeson.Types.ToJSON..= sendEmailToProvider obj : "send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= sendPhoneNumberToProvider obj : "suggested_tip_amounts" Data.Aeson.Types.ToJSON..= suggestedTipAmounts obj : "title" Data.Aeson.Types.ToJSON..= title obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("currency" Data.Aeson.Types.ToJSON..= currency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("is_flexible" Data.Aeson.Types.ToJSON..= isFlexible obj) GHC.Base.<> (("max_tip_amount" Data.Aeson.Types.ToJSON..= maxTipAmount obj) GHC.Base.<> (("need_email" Data.Aeson.Types.ToJSON..= needEmail obj) GHC.Base.<> (("need_name" Data.Aeson.Types.ToJSON..= needName obj) GHC.Base.<> (("need_phone_number" Data.Aeson.Types.ToJSON..= needPhoneNumber obj) GHC.Base.<> (("need_shipping_address" Data.Aeson.Types.ToJSON..= needShippingAddress obj) GHC.Base.<> (("payload" Data.Aeson.Types.ToJSON..= payload obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= photoHeight obj) GHC.Base.<> (("photo_size" Data.Aeson.Types.ToJSON..= photoSize obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= photoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= photoWidth obj) GHC.Base.<> (("prices" Data.Aeson.Types.ToJSON..= prices obj) GHC.Base.<> (("provider_data" Data.Aeson.Types.ToJSON..= providerData obj) GHC.Base.<> (("provider_token" Data.Aeson.Types.ToJSON..= providerToken obj) GHC.Base.<> (("send_email_to_provider" Data.Aeson.Types.ToJSON..= sendEmailToProvider obj) GHC.Base.<> (("send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= sendPhoneNumberToProvider obj) GHC.Base.<> (("suggested_tip_amounts" Data.Aeson.Types.ToJSON..= suggestedTipAmounts obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= title obj))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InputInvoiceMessageContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InputInvoiceMessageContent" (\obj -> (((((((((((((((((((GHC.Base.pure InputInvoiceMessageContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_flexible")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_tip_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "provider_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_email_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_phone_number_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "suggested_tip_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'InputInvoiceMessageContent' with all required fields.
mkInputInvoiceMessageContent :: Data.Text.Internal.Text -- ^ 'currency'
  -> Data.Text.Internal.Text -- ^ 'description'
  -> Data.Text.Internal.Text -- ^ 'payload'
  -> [LabeledPrice] -- ^ 'prices'
  -> Data.Text.Internal.Text -- ^ 'providerToken'
  -> Data.Text.Internal.Text -- ^ 'title'
  -> InputInvoiceMessageContent
mkInputInvoiceMessageContent currency description payload prices providerToken title = InputInvoiceMessageContent{currency = currency,
                                                                                                                  description = description,
                                                                                                                  isFlexible = GHC.Maybe.Nothing,
                                                                                                                  maxTipAmount = GHC.Maybe.Nothing,
                                                                                                                  needEmail = GHC.Maybe.Nothing,
                                                                                                                  needName = GHC.Maybe.Nothing,
                                                                                                                  needPhoneNumber = GHC.Maybe.Nothing,
                                                                                                                  needShippingAddress = GHC.Maybe.Nothing,
                                                                                                                  payload = payload,
                                                                                                                  photoHeight = GHC.Maybe.Nothing,
                                                                                                                  photoSize = GHC.Maybe.Nothing,
                                                                                                                  photoUrl = GHC.Maybe.Nothing,
                                                                                                                  photoWidth = GHC.Maybe.Nothing,
                                                                                                                  prices = prices,
                                                                                                                  providerData = GHC.Maybe.Nothing,
                                                                                                                  providerToken = providerToken,
                                                                                                                  sendEmailToProvider = GHC.Maybe.Nothing,
                                                                                                                  sendPhoneNumberToProvider = GHC.Maybe.Nothing,
                                                                                                                  suggestedTipAmounts = GHC.Maybe.Nothing,
                                                                                                                  title = title}
