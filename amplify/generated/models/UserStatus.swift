// swiftlint:disable all
import Amplify
import Foundation

public enum UserStatus: String {
  case expired = "EXPIRED"
  case general = "GENERAL"
  case subscriber = "SUBSCRIBER"
  case trial = "TRIAL"
}