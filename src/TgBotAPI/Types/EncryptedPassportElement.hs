-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EncryptedPassportElement
module TgBotAPI.Types.EncryptedPassportElement where

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
import {-# SOURCE #-} TgBotAPI.Types.PassportFile

-- | Defines the object schema located at @components.schemas.EncryptedPassportElement@ in the specification.
-- 
-- Contains information about documents or other Telegram Passport elements shared with the bot by the user.
data EncryptedPassportElement = EncryptedPassportElement {
  -- | data: *Optional*. Base64-encoded encrypted Telegram Passport element data provided by the user, available for “personal\\_details”, “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport” and “address” types. Can be decrypted and verified using the accompanying [EncryptedCredentials](https:\/\/core.telegram.org\/bots\/api\/\#encryptedcredentials).
  encryptedPassportElementData :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | email: *Optional*. User\'s verified email address, available only for “email” type
  , encryptedPassportElementEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | files: *Optional*. Array of encrypted files with documents provided by the user, available for “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration” and “temporary\\_registration” types. Files can be decrypted and verified using the accompanying [EncryptedCredentials](https:\/\/core.telegram.org\/bots\/api\/\#encryptedcredentials).
  , encryptedPassportElementFiles :: (GHC.Maybe.Maybe ([PassportFile]))
  -- | front_side: This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don\'t exceed 10MB.
  , encryptedPassportElementFrontSide :: (GHC.Maybe.Maybe PassportFile)
  -- | hash: Base64-encoded element hash for using in [PassportElementErrorUnspecified](https:\/\/core.telegram.org\/bots\/api\/\#passportelementerrorunspecified)
  , encryptedPassportElementHash :: Data.Text.Internal.Text
  -- | phone_number: *Optional*. User\'s verified phone number, available only for “phone\\_number” type
  , encryptedPassportElementPhoneNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reverse_side: This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don\'t exceed 10MB.
  , encryptedPassportElementReverseSide :: (GHC.Maybe.Maybe PassportFile)
  -- | selfie: This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don\'t exceed 10MB.
  , encryptedPassportElementSelfie :: (GHC.Maybe.Maybe PassportFile)
  -- | translation: *Optional*. Array of encrypted files with translated versions of documents provided by the user. Available if requested for “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration” and “temporary\\_registration” types. Files can be decrypted and verified using the accompanying [EncryptedCredentials](https:\/\/core.telegram.org\/bots\/api\/\#encryptedcredentials).
  , encryptedPassportElementTranslation :: (GHC.Maybe.Maybe ([PassportFile]))
  -- | type: Element type. One of “personal\\_details”, “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “address”, “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”, “phone\\_number”, “email”.
  , encryptedPassportElementType :: EncryptedPassportElementType
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EncryptedPassportElement
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= encryptedPassportElementData obj : "email" Data.Aeson.Types.ToJSON..= encryptedPassportElementEmail obj : "files" Data.Aeson.Types.ToJSON..= encryptedPassportElementFiles obj : "front_side" Data.Aeson.Types.ToJSON..= encryptedPassportElementFrontSide obj : "hash" Data.Aeson.Types.ToJSON..= encryptedPassportElementHash obj : "phone_number" Data.Aeson.Types.ToJSON..= encryptedPassportElementPhoneNumber obj : "reverse_side" Data.Aeson.Types.ToJSON..= encryptedPassportElementReverseSide obj : "selfie" Data.Aeson.Types.ToJSON..= encryptedPassportElementSelfie obj : "translation" Data.Aeson.Types.ToJSON..= encryptedPassportElementTranslation obj : "type" Data.Aeson.Types.ToJSON..= encryptedPassportElementType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= encryptedPassportElementData obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= encryptedPassportElementEmail obj) GHC.Base.<> (("files" Data.Aeson.Types.ToJSON..= encryptedPassportElementFiles obj) GHC.Base.<> (("front_side" Data.Aeson.Types.ToJSON..= encryptedPassportElementFrontSide obj) GHC.Base.<> (("hash" Data.Aeson.Types.ToJSON..= encryptedPassportElementHash obj) GHC.Base.<> (("phone_number" Data.Aeson.Types.ToJSON..= encryptedPassportElementPhoneNumber obj) GHC.Base.<> (("reverse_side" Data.Aeson.Types.ToJSON..= encryptedPassportElementReverseSide obj) GHC.Base.<> (("selfie" Data.Aeson.Types.ToJSON..= encryptedPassportElementSelfie obj) GHC.Base.<> (("translation" Data.Aeson.Types.ToJSON..= encryptedPassportElementTranslation obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= encryptedPassportElementType obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON EncryptedPassportElement
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EncryptedPassportElement" (\obj -> (((((((((GHC.Base.pure EncryptedPassportElement GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "files")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front_side")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reverse_side")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selfie")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "translation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'EncryptedPassportElement' with all required fields.
mkEncryptedPassportElement :: Data.Text.Internal.Text -- ^ 'encryptedPassportElementHash'
  -> EncryptedPassportElementType -- ^ 'encryptedPassportElementType'
  -> EncryptedPassportElement
mkEncryptedPassportElement encryptedPassportElementHash encryptedPassportElementType = EncryptedPassportElement{encryptedPassportElementData = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementEmail = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementFiles = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementFrontSide = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementHash = encryptedPassportElementHash,
                                                                                                                encryptedPassportElementPhoneNumber = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementReverseSide = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementSelfie = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementTranslation = GHC.Maybe.Nothing,
                                                                                                                encryptedPassportElementType = encryptedPassportElementType}
-- | Defines the enum schema located at @components.schemas.EncryptedPassportElement.properties.type@ in the specification.
-- 
-- Element type. One of “personal\\_details”, “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “address”, “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”, “phone\\_number”, “email”.
data EncryptedPassportElementType =
   EncryptedPassportElementTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | EncryptedPassportElementTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | EncryptedPassportElementTypeEnumPersonalDetails -- ^ Represents the JSON value @"personal_details"@
  | EncryptedPassportElementTypeEnumPassport -- ^ Represents the JSON value @"passport"@
  | EncryptedPassportElementTypeEnumDriverLicense -- ^ Represents the JSON value @"driver_license"@
  | EncryptedPassportElementTypeEnumIdentityCard -- ^ Represents the JSON value @"identity_card"@
  | EncryptedPassportElementTypeEnumInternalPassport -- ^ Represents the JSON value @"internal_passport"@
  | EncryptedPassportElementTypeEnumAddress -- ^ Represents the JSON value @"address"@
  | EncryptedPassportElementTypeEnumUtilityBill -- ^ Represents the JSON value @"utility_bill"@
  | EncryptedPassportElementTypeEnumBankStatement -- ^ Represents the JSON value @"bank_statement"@
  | EncryptedPassportElementTypeEnumRentalAgreement -- ^ Represents the JSON value @"rental_agreement"@
  | EncryptedPassportElementTypeEnumPassportRegistration -- ^ Represents the JSON value @"passport_registration"@
  | EncryptedPassportElementTypeEnumTemporaryRegistration -- ^ Represents the JSON value @"temporary_registration"@
  | EncryptedPassportElementTypeEnumPhoneNumber -- ^ Represents the JSON value @"phone_number"@
  | EncryptedPassportElementTypeEnumEmail -- ^ Represents the JSON value @"email"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EncryptedPassportElementType
    where toJSON (EncryptedPassportElementTypeOther val) = val
          toJSON (EncryptedPassportElementTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (EncryptedPassportElementTypeEnumPersonalDetails) = "personal_details"
          toJSON (EncryptedPassportElementTypeEnumPassport) = "passport"
          toJSON (EncryptedPassportElementTypeEnumDriverLicense) = "driver_license"
          toJSON (EncryptedPassportElementTypeEnumIdentityCard) = "identity_card"
          toJSON (EncryptedPassportElementTypeEnumInternalPassport) = "internal_passport"
          toJSON (EncryptedPassportElementTypeEnumAddress) = "address"
          toJSON (EncryptedPassportElementTypeEnumUtilityBill) = "utility_bill"
          toJSON (EncryptedPassportElementTypeEnumBankStatement) = "bank_statement"
          toJSON (EncryptedPassportElementTypeEnumRentalAgreement) = "rental_agreement"
          toJSON (EncryptedPassportElementTypeEnumPassportRegistration) = "passport_registration"
          toJSON (EncryptedPassportElementTypeEnumTemporaryRegistration) = "temporary_registration"
          toJSON (EncryptedPassportElementTypeEnumPhoneNumber) = "phone_number"
          toJSON (EncryptedPassportElementTypeEnumEmail) = "email"
instance Data.Aeson.Types.FromJSON.FromJSON EncryptedPassportElementType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "personal_details" -> EncryptedPassportElementTypeEnumPersonalDetails
                                            | val GHC.Classes.== "passport" -> EncryptedPassportElementTypeEnumPassport
                                            | val GHC.Classes.== "driver_license" -> EncryptedPassportElementTypeEnumDriverLicense
                                            | val GHC.Classes.== "identity_card" -> EncryptedPassportElementTypeEnumIdentityCard
                                            | val GHC.Classes.== "internal_passport" -> EncryptedPassportElementTypeEnumInternalPassport
                                            | val GHC.Classes.== "address" -> EncryptedPassportElementTypeEnumAddress
                                            | val GHC.Classes.== "utility_bill" -> EncryptedPassportElementTypeEnumUtilityBill
                                            | val GHC.Classes.== "bank_statement" -> EncryptedPassportElementTypeEnumBankStatement
                                            | val GHC.Classes.== "rental_agreement" -> EncryptedPassportElementTypeEnumRentalAgreement
                                            | val GHC.Classes.== "passport_registration" -> EncryptedPassportElementTypeEnumPassportRegistration
                                            | val GHC.Classes.== "temporary_registration" -> EncryptedPassportElementTypeEnumTemporaryRegistration
                                            | val GHC.Classes.== "phone_number" -> EncryptedPassportElementTypeEnumPhoneNumber
                                            | val GHC.Classes.== "email" -> EncryptedPassportElementTypeEnumEmail
                                            | GHC.Base.otherwise -> EncryptedPassportElementTypeOther val)
