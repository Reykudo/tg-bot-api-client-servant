module TgBotAPI.Types.Error where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Error
instance Show Error
instance Eq Error
instance FromJSON Error
instance ToJSON Error
