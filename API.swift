//  This file was automatically generated and should not be edited.

import AWSAppSync

public enum Category: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case eat
  case focus
  case move
  case sleep
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "EAT": self = .eat
      case "FOCUS": self = .focus
      case "MOVE": self = .move
      case "SLEEP": self = .sleep
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .eat: return "EAT"
      case .focus: return "FOCUS"
      case .move: return "MOVE"
      case .sleep: return "SLEEP"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: Category, rhs: Category) -> Bool {
    switch (lhs, rhs) {
      case (.eat, .eat): return true
      case (.focus, .focus): return true
      case (.move, .move): return true
      case (.sleep, .sleep): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

/// #### Enumarations
public enum UserStatus: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case expired
  case general
  case subscriber
  case trial
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "EXPIRED": self = .expired
      case "GENERAL": self = .general
      case "SUBSCRIBER": self = .subscriber
      case "TRIAL": self = .trial
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .expired: return "EXPIRED"
      case .general: return "GENERAL"
      case .subscriber: return "SUBSCRIBER"
      case .trial: return "TRIAL"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: UserStatus, rhs: UserStatus) -> Bool {
    switch (lhs, rhs) {
      case (.expired, .expired): return true
      case (.general, .general): return true
      case (.subscriber, .subscriber): return true
      case (.trial, .trial): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct S3ObjectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(bucket: String, key: String, localUri: String? = nil, mimeType: String, region: String) {
    graphQLMap = ["bucket": bucket, "key": key, "localUri": localUri, "mimeType": mimeType, "region": region]
  }

  public var bucket: String {
    get {
      return graphQLMap["bucket"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "bucket")
    }
  }

  public var key: String {
    get {
      return graphQLMap["key"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  public var localUri: String? {
    get {
      return graphQLMap["localUri"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "localUri")
    }
  }

  public var mimeType: String {
    get {
      return graphQLMap["mimeType"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mimeType")
    }
  }

  public var region: String {
    get {
      return graphQLMap["region"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "region")
    }
  }
}

public struct ProfileInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(address: AddressInput? = nil, email: String? = nil, title: String? = nil, website: String? = nil) {
    graphQLMap = ["address": address, "email": email, "title": title, "website": website]
  }

  public var address: AddressInput? {
    get {
      return graphQLMap["address"] as! AddressInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var website: String? {
    get {
      return graphQLMap["website"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "website")
    }
  }
}

/// #### Inputs
public struct AddressInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(country: String? = nil, locality: String? = nil, postalCode: String? = nil, region: String? = nil, street: [String?]) {
    graphQLMap = ["country": country, "locality": locality, "postalCode": postalCode, "region": region, "street": street]
  }

  public var country: String? {
    get {
      return graphQLMap["country"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "country")
    }
  }

  public var locality: String? {
    get {
      return graphQLMap["locality"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locality")
    }
  }

  public var postalCode: String? {
    get {
      return graphQLMap["postalCode"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postalCode")
    }
  }

  public var region: String? {
    get {
      return graphQLMap["region"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "region")
    }
  }

  public var street: [String?] {
    get {
      return graphQLMap["street"] as! [String?]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "street")
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser {\n  getUser {\n    __typename\n    avatar {\n      __typename\n      bucket\n      key\n      region\n      mimeType\n    }\n    createdAt\n    email\n    expiresAt\n    habits {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    name\n    profile {\n      __typename\n      address {\n        __typename\n        country\n        locality\n        postalCode\n        region\n        street\n      }\n      phone\n      title\n      website\n    }\n    role\n    status\n    updatedAt\n    welcomeSentAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", type: .nonNull(.object(GetUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.snapshot])
    }

    public var getUser: GetUser {
      get {
        return GetUser(snapshot: snapshot["getUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .object(Avatar.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("expiresAt", type: .scalar(String.self)),
        GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("role", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("welcomeSentAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var avatar: Avatar? {
        get {
          return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var expiresAt: String? {
        get {
          return snapshot["expiresAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "expiresAt")
        }
      }

      public var habits: [Habit] {
        get {
          return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var role: String {
        get {
          return snapshot["role"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "role")
        }
      }

      public var status: UserStatus {
        get {
          return snapshot["status"]! as! UserStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var welcomeSentAt: String? {
        get {
          return snapshot["welcomeSentAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "welcomeSentAt")
        }
      }

      public struct Avatar: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
          GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String, mimeType: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }

        public var mimeType: String {
          get {
            return snapshot["mimeType"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "mimeType")
          }
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("address", type: .object(Address.selections)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(address: Address? = nil, phone: String? = nil, title: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "Profile", "address": address.flatMap { $0.snapshot }, "phone": phone, "title": title, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var address: Address? {
          get {
            return (snapshot["address"] as? Snapshot).flatMap { Address(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "address")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }

        public struct Address: GraphQLSelectionSet {
          public static let possibleTypes = ["Address"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("country", type: .scalar(String.self)),
            GraphQLField("locality", type: .scalar(String.self)),
            GraphQLField("postalCode", type: .scalar(String.self)),
            GraphQLField("region", type: .scalar(String.self)),
            GraphQLField("street", type: .list(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(country: String? = nil, locality: String? = nil, postalCode: String? = nil, region: String? = nil, street: [String?]? = nil) {
            self.init(snapshot: ["__typename": "Address", "country": country, "locality": locality, "postalCode": postalCode, "region": region, "street": street])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var country: String? {
            get {
              return snapshot["country"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "country")
            }
          }

          public var locality: String? {
            get {
              return snapshot["locality"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "locality")
            }
          }

          public var postalCode: String? {
            get {
              return snapshot["postalCode"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "postalCode")
            }
          }

          public var region: String? {
            get {
              return snapshot["region"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var street: [String?]? {
            get {
              return snapshot["street"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "street")
            }
          }
        }
      }
    }
  }
}

public final class GetUsersQuery: GraphQLQuery {
  public static let operationString =
    "query GetUsers {\n  getUsers {\n    __typename\n    avatar {\n      __typename\n      bucket\n      key\n      region\n      mimeType\n    }\n    createdAt\n    email\n    expiresAt\n    habits {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    name\n    profile {\n      __typename\n      address {\n        __typename\n        country\n        locality\n        postalCode\n        region\n        street\n      }\n      phone\n      title\n      website\n    }\n    role\n    status\n    updatedAt\n    welcomeSentAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUsers", type: .nonNull(.list(.nonNull(.object(GetUser.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUsers: [GetUser]) {
      self.init(snapshot: ["__typename": "Query", "getUsers": getUsers.map { $0.snapshot }])
    }

    public var getUsers: [GetUser] {
      get {
        return (snapshot["getUsers"] as! [Snapshot]).map { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "getUsers")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .object(Avatar.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("expiresAt", type: .scalar(String.self)),
        GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("role", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("welcomeSentAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var avatar: Avatar? {
        get {
          return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var expiresAt: String? {
        get {
          return snapshot["expiresAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "expiresAt")
        }
      }

      public var habits: [Habit] {
        get {
          return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var role: String {
        get {
          return snapshot["role"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "role")
        }
      }

      public var status: UserStatus {
        get {
          return snapshot["status"]! as! UserStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var welcomeSentAt: String? {
        get {
          return snapshot["welcomeSentAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "welcomeSentAt")
        }
      }

      public struct Avatar: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
          GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String, mimeType: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }

        public var mimeType: String {
          get {
            return snapshot["mimeType"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "mimeType")
          }
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("address", type: .object(Address.selections)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(address: Address? = nil, phone: String? = nil, title: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "Profile", "address": address.flatMap { $0.snapshot }, "phone": phone, "title": title, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var address: Address? {
          get {
            return (snapshot["address"] as? Snapshot).flatMap { Address(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "address")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }

        public struct Address: GraphQLSelectionSet {
          public static let possibleTypes = ["Address"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("country", type: .scalar(String.self)),
            GraphQLField("locality", type: .scalar(String.self)),
            GraphQLField("postalCode", type: .scalar(String.self)),
            GraphQLField("region", type: .scalar(String.self)),
            GraphQLField("street", type: .list(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(country: String? = nil, locality: String? = nil, postalCode: String? = nil, region: String? = nil, street: [String?]? = nil) {
            self.init(snapshot: ["__typename": "Address", "country": country, "locality": locality, "postalCode": postalCode, "region": region, "street": street])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var country: String? {
            get {
              return snapshot["country"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "country")
            }
          }

          public var locality: String? {
            get {
              return snapshot["locality"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "locality")
            }
          }

          public var postalCode: String? {
            get {
              return snapshot["postalCode"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "postalCode")
            }
          }

          public var region: String? {
            get {
              return snapshot["region"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var street: [String?]? {
            get {
              return snapshot["street"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "street")
            }
          }
        }
      }
    }
  }
}

public final class GetHabitQuery: GraphQLQuery {
  public static let operationString =
    "query GetHabit($id: ID!) {\n  getHabit(id: $id) {\n    __typename\n    category\n    createdAt\n    deletedAt\n    description\n    enableWeekends\n    id\n    place\n    sort\n    tasks {\n      __typename\n      completed\n      completionDate\n      createdAt\n      difficulty\n      habit {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      rating\n      updatedAt\n      version\n    }\n    time\n    trigger\n    updatedAt\n    userId\n    user {\n      __typename\n      avatar {\n        __typename\n        bucket\n        key\n        region\n        mimeType\n      }\n      createdAt\n      email\n      expiresAt\n      habits {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      name\n      profile {\n        __typename\n        phone\n        title\n        website\n      }\n      role\n      status\n      updatedAt\n      welcomeSentAt\n    }\n    why\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getHabit", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(GetHabit.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getHabit: GetHabit) {
      self.init(snapshot: ["__typename": "Query", "getHabit": getHabit.snapshot])
    }

    public var getHabit: GetHabit {
      get {
        return GetHabit(snapshot: snapshot["getHabit"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getHabit")
      }
    }

    public struct GetHabit: GraphQLSelectionSet {
      public static let possibleTypes = ["Habit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(Category.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("deletedAt", type: .scalar(String.self)),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("enableWeekends", type: .scalar(Bool.self)),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("sort", type: .nonNull(.scalar(String.self))),
        GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
        GraphQLField("time", type: .nonNull(.scalar(String.self))),
        GraphQLField("trigger", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("why", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
        self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: Category {
        get {
          return snapshot["category"]! as! Category
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var deletedAt: String? {
        get {
          return snapshot["deletedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deletedAt")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var enableWeekends: Bool? {
        get {
          return snapshot["enableWeekends"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "enableWeekends")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var sort: String {
        get {
          return snapshot["sort"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sort")
        }
      }

      public var tasks: [Task] {
        get {
          return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
        }
      }

      public var time: String {
        get {
          return snapshot["time"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var trigger: String? {
        get {
          return snapshot["trigger"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "trigger")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var why: String? {
        get {
          return snapshot["why"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "why")
        }
      }

      public struct Task: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("difficulty", type: .scalar(Int.self)),
          GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("version", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var completed: Bool {
          get {
            return snapshot["completed"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "completed")
          }
        }

        public var completionDate: String {
          get {
            return snapshot["completionDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "completionDate")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var difficulty: Int? {
          get {
            return snapshot["difficulty"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "difficulty")
          }
        }

        public var habit: Habit {
          get {
            return Habit(snapshot: snapshot["habit"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "habit")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var rating: Int? {
          get {
            return snapshot["rating"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: String? {
          get {
            return snapshot["version"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("expiresAt", type: .scalar(String.self)),
          GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("profile", type: .object(Profile.selections)),
          GraphQLField("role", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("welcomeSentAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: Avatar? {
          get {
            return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var expiresAt: String? {
          get {
            return snapshot["expiresAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "expiresAt")
          }
        }

        public var habits: [Habit] {
          get {
            return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var profile: Profile? {
          get {
            return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "profile")
          }
        }

        public var role: String {
          get {
            return snapshot["role"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "role")
          }
        }

        public var status: UserStatus {
          get {
            return snapshot["status"]! as! UserStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var welcomeSentAt: String? {
          get {
            return snapshot["welcomeSentAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "welcomeSentAt")
          }
        }

        public struct Avatar: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
            GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String, mimeType: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var mimeType: String {
            get {
              return snapshot["mimeType"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "mimeType")
            }
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }

        public struct Profile: GraphQLSelectionSet {
          public static let possibleTypes = ["Profile"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("website", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(phone: String? = nil, title: String? = nil, website: String? = nil) {
            self.init(snapshot: ["__typename": "Profile", "phone": phone, "title": title, "website": website])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var website: String? {
            get {
              return snapshot["website"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "website")
            }
          }
        }
      }
    }
  }
}

public final class GetHabitsQuery: GraphQLQuery {
  public static let operationString =
    "query GetHabits($userId: ID) {\n  getHabits(userId: $userId) {\n    __typename\n    category\n    createdAt\n    deletedAt\n    description\n    enableWeekends\n    id\n    place\n    sort\n    tasks {\n      __typename\n      completed\n      completionDate\n      createdAt\n      difficulty\n      habit {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      rating\n      updatedAt\n      version\n    }\n    time\n    trigger\n    updatedAt\n    userId\n    user {\n      __typename\n      avatar {\n        __typename\n        bucket\n        key\n        region\n        mimeType\n      }\n      createdAt\n      email\n      expiresAt\n      habits {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      name\n      profile {\n        __typename\n        phone\n        title\n        website\n      }\n      role\n      status\n      updatedAt\n      welcomeSentAt\n    }\n    why\n  }\n}"

  public var userId: GraphQLID?

  public init(userId: GraphQLID? = nil) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getHabits", arguments: ["userId": GraphQLVariable("userId")], type: .nonNull(.list(.nonNull(.object(GetHabit.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getHabits: [GetHabit]) {
      self.init(snapshot: ["__typename": "Query", "getHabits": getHabits.map { $0.snapshot }])
    }

    public var getHabits: [GetHabit] {
      get {
        return (snapshot["getHabits"] as! [Snapshot]).map { GetHabit(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "getHabits")
      }
    }

    public struct GetHabit: GraphQLSelectionSet {
      public static let possibleTypes = ["Habit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(Category.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("deletedAt", type: .scalar(String.self)),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("enableWeekends", type: .scalar(Bool.self)),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("sort", type: .nonNull(.scalar(String.self))),
        GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
        GraphQLField("time", type: .nonNull(.scalar(String.self))),
        GraphQLField("trigger", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("why", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
        self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: Category {
        get {
          return snapshot["category"]! as! Category
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var deletedAt: String? {
        get {
          return snapshot["deletedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deletedAt")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var enableWeekends: Bool? {
        get {
          return snapshot["enableWeekends"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "enableWeekends")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var sort: String {
        get {
          return snapshot["sort"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sort")
        }
      }

      public var tasks: [Task] {
        get {
          return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
        }
      }

      public var time: String {
        get {
          return snapshot["time"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var trigger: String? {
        get {
          return snapshot["trigger"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "trigger")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var why: String? {
        get {
          return snapshot["why"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "why")
        }
      }

      public struct Task: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("difficulty", type: .scalar(Int.self)),
          GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("version", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var completed: Bool {
          get {
            return snapshot["completed"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "completed")
          }
        }

        public var completionDate: String {
          get {
            return snapshot["completionDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "completionDate")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var difficulty: Int? {
          get {
            return snapshot["difficulty"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "difficulty")
          }
        }

        public var habit: Habit {
          get {
            return Habit(snapshot: snapshot["habit"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "habit")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var rating: Int? {
          get {
            return snapshot["rating"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: String? {
          get {
            return snapshot["version"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("expiresAt", type: .scalar(String.self)),
          GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("profile", type: .object(Profile.selections)),
          GraphQLField("role", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("welcomeSentAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: Avatar? {
          get {
            return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var expiresAt: String? {
          get {
            return snapshot["expiresAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "expiresAt")
          }
        }

        public var habits: [Habit] {
          get {
            return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var profile: Profile? {
          get {
            return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "profile")
          }
        }

        public var role: String {
          get {
            return snapshot["role"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "role")
          }
        }

        public var status: UserStatus {
          get {
            return snapshot["status"]! as! UserStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var welcomeSentAt: String? {
          get {
            return snapshot["welcomeSentAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "welcomeSentAt")
          }
        }

        public struct Avatar: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
            GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String, mimeType: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var mimeType: String {
            get {
              return snapshot["mimeType"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "mimeType")
            }
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }

        public struct Profile: GraphQLSelectionSet {
          public static let possibleTypes = ["Profile"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("website", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(phone: String? = nil, title: String? = nil, website: String? = nil) {
            self.init(snapshot: ["__typename": "Profile", "phone": phone, "title": title, "website": website])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var website: String? {
            get {
              return snapshot["website"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "website")
            }
          }
        }
      }
    }
  }
}

public final class GetTaskQuery: GraphQLQuery {
  public static let operationString =
    "query GetTask($id: ID!) {\n  getTask(id: $id) {\n    __typename\n    completed\n    completionDate\n    createdAt\n    difficulty\n    habit {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    rating\n    updatedAt\n    version\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTask", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(GetTask.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTask: GetTask) {
      self.init(snapshot: ["__typename": "Query", "getTask": getTask.snapshot])
    }

    public var getTask: GetTask {
      get {
        return GetTask(snapshot: snapshot["getTask"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getTask")
      }
    }

    public struct GetTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("difficulty", type: .scalar(Int.self)),
        GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("rating", type: .scalar(Int.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("version", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var completed: Bool {
        get {
          return snapshot["completed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "completed")
        }
      }

      public var completionDate: String {
        get {
          return snapshot["completionDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "completionDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var difficulty: Int? {
        get {
          return snapshot["difficulty"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "difficulty")
        }
      }

      public var habit: Habit {
        get {
          return Habit(snapshot: snapshot["habit"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "habit")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var rating: Int? {
        get {
          return snapshot["rating"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: String? {
        get {
          return snapshot["version"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }
    }
  }
}

public final class GetTasksQuery: GraphQLQuery {
  public static let operationString =
    "query GetTasks($habitId: ID) {\n  getTasks(habitId: $habitId) {\n    __typename\n    completed\n    completionDate\n    createdAt\n    difficulty\n    habit {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    rating\n    updatedAt\n    version\n  }\n}"

  public var habitId: GraphQLID?

  public init(habitId: GraphQLID? = nil) {
    self.habitId = habitId
  }

  public var variables: GraphQLMap? {
    return ["habitId": habitId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTasks", arguments: ["habitId": GraphQLVariable("habitId")], type: .nonNull(.list(.nonNull(.object(GetTask.selections))))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTasks: [GetTask]) {
      self.init(snapshot: ["__typename": "Query", "getTasks": getTasks.map { $0.snapshot }])
    }

    public var getTasks: [GetTask] {
      get {
        return (snapshot["getTasks"] as! [Snapshot]).map { GetTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "getTasks")
      }
    }

    public struct GetTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("difficulty", type: .scalar(Int.self)),
        GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("rating", type: .scalar(Int.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("version", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var completed: Bool {
        get {
          return snapshot["completed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "completed")
        }
      }

      public var completionDate: String {
        get {
          return snapshot["completionDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "completionDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var difficulty: Int? {
        get {
          return snapshot["difficulty"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "difficulty")
        }
      }

      public var habit: Habit {
        get {
          return Habit(snapshot: snapshot["habit"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "habit")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var rating: Int? {
        get {
          return snapshot["rating"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: String? {
        get {
          return snapshot["version"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }
    }
  }
}

public final class CreateHabitMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateHabit($category: Category!, $description: String!, $enableWeekends: Boolean, $id: ID, $place: String, $time: String, $trigger: String, $userId: ID, $why: String) {\n  createHabit(category: $category, description: $description, enableWeekends: $enableWeekends, id: $id, place: $place, time: $time, trigger: $trigger, userId: $userId, why: $why) {\n    __typename\n    category\n    createdAt\n    deletedAt\n    description\n    enableWeekends\n    id\n    place\n    sort\n    tasks {\n      __typename\n      completed\n      completionDate\n      createdAt\n      difficulty\n      habit {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      rating\n      updatedAt\n      version\n    }\n    time\n    trigger\n    updatedAt\n    userId\n    user {\n      __typename\n      avatar {\n        __typename\n        bucket\n        key\n        region\n        mimeType\n      }\n      createdAt\n      email\n      expiresAt\n      habits {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      name\n      profile {\n        __typename\n        phone\n        title\n        website\n      }\n      role\n      status\n      updatedAt\n      welcomeSentAt\n    }\n    why\n  }\n}"

  public var category: Category
  public var description: String
  public var enableWeekends: Bool?
  public var id: GraphQLID?
  public var place: String?
  public var time: String?
  public var trigger: String?
  public var userId: GraphQLID?
  public var why: String?

  public init(category: Category, description: String, enableWeekends: Bool? = nil, id: GraphQLID? = nil, place: String? = nil, time: String? = nil, trigger: String? = nil, userId: GraphQLID? = nil, why: String? = nil) {
    self.category = category
    self.description = description
    self.enableWeekends = enableWeekends
    self.id = id
    self.place = place
    self.time = time
    self.trigger = trigger
    self.userId = userId
    self.why = why
  }

  public var variables: GraphQLMap? {
    return ["category": category, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "time": time, "trigger": trigger, "userId": userId, "why": why]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createHabit", arguments: ["category": GraphQLVariable("category"), "description": GraphQLVariable("description"), "enableWeekends": GraphQLVariable("enableWeekends"), "id": GraphQLVariable("id"), "place": GraphQLVariable("place"), "time": GraphQLVariable("time"), "trigger": GraphQLVariable("trigger"), "userId": GraphQLVariable("userId"), "why": GraphQLVariable("why")], type: .object(CreateHabit.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createHabit: CreateHabit? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createHabit": createHabit.flatMap { $0.snapshot }])
    }

    public var createHabit: CreateHabit? {
      get {
        return (snapshot["createHabit"] as? Snapshot).flatMap { CreateHabit(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createHabit")
      }
    }

    public struct CreateHabit: GraphQLSelectionSet {
      public static let possibleTypes = ["Habit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(Category.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("deletedAt", type: .scalar(String.self)),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("enableWeekends", type: .scalar(Bool.self)),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("sort", type: .nonNull(.scalar(String.self))),
        GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
        GraphQLField("time", type: .nonNull(.scalar(String.self))),
        GraphQLField("trigger", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("why", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
        self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: Category {
        get {
          return snapshot["category"]! as! Category
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var deletedAt: String? {
        get {
          return snapshot["deletedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deletedAt")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var enableWeekends: Bool? {
        get {
          return snapshot["enableWeekends"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "enableWeekends")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var sort: String {
        get {
          return snapshot["sort"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sort")
        }
      }

      public var tasks: [Task] {
        get {
          return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
        }
      }

      public var time: String {
        get {
          return snapshot["time"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var trigger: String? {
        get {
          return snapshot["trigger"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "trigger")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var why: String? {
        get {
          return snapshot["why"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "why")
        }
      }

      public struct Task: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("difficulty", type: .scalar(Int.self)),
          GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("version", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var completed: Bool {
          get {
            return snapshot["completed"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "completed")
          }
        }

        public var completionDate: String {
          get {
            return snapshot["completionDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "completionDate")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var difficulty: Int? {
          get {
            return snapshot["difficulty"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "difficulty")
          }
        }

        public var habit: Habit {
          get {
            return Habit(snapshot: snapshot["habit"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "habit")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var rating: Int? {
          get {
            return snapshot["rating"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: String? {
          get {
            return snapshot["version"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("expiresAt", type: .scalar(String.self)),
          GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("profile", type: .object(Profile.selections)),
          GraphQLField("role", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("welcomeSentAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: Avatar? {
          get {
            return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var expiresAt: String? {
          get {
            return snapshot["expiresAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "expiresAt")
          }
        }

        public var habits: [Habit] {
          get {
            return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var profile: Profile? {
          get {
            return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "profile")
          }
        }

        public var role: String {
          get {
            return snapshot["role"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "role")
          }
        }

        public var status: UserStatus {
          get {
            return snapshot["status"]! as! UserStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var welcomeSentAt: String? {
          get {
            return snapshot["welcomeSentAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "welcomeSentAt")
          }
        }

        public struct Avatar: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
            GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String, mimeType: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var mimeType: String {
            get {
              return snapshot["mimeType"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "mimeType")
            }
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }

        public struct Profile: GraphQLSelectionSet {
          public static let possibleTypes = ["Profile"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("website", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(phone: String? = nil, title: String? = nil, website: String? = nil) {
            self.init(snapshot: ["__typename": "Profile", "phone": phone, "title": title, "website": website])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var website: String? {
            get {
              return snapshot["website"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "website")
            }
          }
        }
      }
    }
  }
}

public final class CreateTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTask($completed: Boolean!, $completionDate: String!, $difficulty: Int, $habitId: ID!, $id: ID, $rating: Int) {\n  createTask(completed: $completed, completionDate: $completionDate, difficulty: $difficulty, habitId: $habitId, id: $id, rating: $rating) {\n    __typename\n    completed\n    completionDate\n    createdAt\n    difficulty\n    habit {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    rating\n    updatedAt\n    version\n  }\n}"

  public var completed: Bool
  public var completionDate: String
  public var difficulty: Int?
  public var habitId: GraphQLID
  public var id: GraphQLID?
  public var rating: Int?

  public init(completed: Bool, completionDate: String, difficulty: Int? = nil, habitId: GraphQLID, id: GraphQLID? = nil, rating: Int? = nil) {
    self.completed = completed
    self.completionDate = completionDate
    self.difficulty = difficulty
    self.habitId = habitId
    self.id = id
    self.rating = rating
  }

  public var variables: GraphQLMap? {
    return ["completed": completed, "completionDate": completionDate, "difficulty": difficulty, "habitId": habitId, "id": id, "rating": rating]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTask", arguments: ["completed": GraphQLVariable("completed"), "completionDate": GraphQLVariable("completionDate"), "difficulty": GraphQLVariable("difficulty"), "habitId": GraphQLVariable("habitId"), "id": GraphQLVariable("id"), "rating": GraphQLVariable("rating")], type: .object(CreateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTask: CreateTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTask": createTask.flatMap { $0.snapshot }])
    }

    public var createTask: CreateTask? {
      get {
        return (snapshot["createTask"] as? Snapshot).flatMap { CreateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTask")
      }
    }

    public struct CreateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("difficulty", type: .scalar(Int.self)),
        GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("rating", type: .scalar(Int.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("version", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var completed: Bool {
        get {
          return snapshot["completed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "completed")
        }
      }

      public var completionDate: String {
        get {
          return snapshot["completionDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "completionDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var difficulty: Int? {
        get {
          return snapshot["difficulty"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "difficulty")
        }
      }

      public var habit: Habit {
        get {
          return Habit(snapshot: snapshot["habit"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "habit")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var rating: Int? {
        get {
          return snapshot["rating"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: String? {
        get {
          return snapshot["version"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }
    }
  }
}

public final class DeleteHabitMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteHabit($id: ID!, $userId: ID) {\n  deleteHabit(id: $id, userId: $userId) {\n    __typename\n    category\n    createdAt\n    deletedAt\n    description\n    enableWeekends\n    id\n    place\n    sort\n    tasks {\n      __typename\n      completed\n      completionDate\n      createdAt\n      difficulty\n      habit {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      rating\n      updatedAt\n      version\n    }\n    time\n    trigger\n    updatedAt\n    userId\n    user {\n      __typename\n      avatar {\n        __typename\n        bucket\n        key\n        region\n        mimeType\n      }\n      createdAt\n      email\n      expiresAt\n      habits {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      name\n      profile {\n        __typename\n        phone\n        title\n        website\n      }\n      role\n      status\n      updatedAt\n      welcomeSentAt\n    }\n    why\n  }\n}"

  public var id: GraphQLID
  public var userId: GraphQLID?

  public init(id: GraphQLID, userId: GraphQLID? = nil) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteHabit", arguments: ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")], type: .object(DeleteHabit.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteHabit: DeleteHabit? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteHabit": deleteHabit.flatMap { $0.snapshot }])
    }

    public var deleteHabit: DeleteHabit? {
      get {
        return (snapshot["deleteHabit"] as? Snapshot).flatMap { DeleteHabit(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteHabit")
      }
    }

    public struct DeleteHabit: GraphQLSelectionSet {
      public static let possibleTypes = ["Habit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(Category.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("deletedAt", type: .scalar(String.self)),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("enableWeekends", type: .scalar(Bool.self)),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("sort", type: .nonNull(.scalar(String.self))),
        GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
        GraphQLField("time", type: .nonNull(.scalar(String.self))),
        GraphQLField("trigger", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("why", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
        self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: Category {
        get {
          return snapshot["category"]! as! Category
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var deletedAt: String? {
        get {
          return snapshot["deletedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deletedAt")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var enableWeekends: Bool? {
        get {
          return snapshot["enableWeekends"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "enableWeekends")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var sort: String {
        get {
          return snapshot["sort"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sort")
        }
      }

      public var tasks: [Task] {
        get {
          return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
        }
      }

      public var time: String {
        get {
          return snapshot["time"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var trigger: String? {
        get {
          return snapshot["trigger"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "trigger")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var why: String? {
        get {
          return snapshot["why"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "why")
        }
      }

      public struct Task: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("difficulty", type: .scalar(Int.self)),
          GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("version", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var completed: Bool {
          get {
            return snapshot["completed"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "completed")
          }
        }

        public var completionDate: String {
          get {
            return snapshot["completionDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "completionDate")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var difficulty: Int? {
          get {
            return snapshot["difficulty"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "difficulty")
          }
        }

        public var habit: Habit {
          get {
            return Habit(snapshot: snapshot["habit"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "habit")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var rating: Int? {
          get {
            return snapshot["rating"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: String? {
          get {
            return snapshot["version"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("expiresAt", type: .scalar(String.self)),
          GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("profile", type: .object(Profile.selections)),
          GraphQLField("role", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("welcomeSentAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: Avatar? {
          get {
            return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var expiresAt: String? {
          get {
            return snapshot["expiresAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "expiresAt")
          }
        }

        public var habits: [Habit] {
          get {
            return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var profile: Profile? {
          get {
            return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "profile")
          }
        }

        public var role: String {
          get {
            return snapshot["role"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "role")
          }
        }

        public var status: UserStatus {
          get {
            return snapshot["status"]! as! UserStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var welcomeSentAt: String? {
          get {
            return snapshot["welcomeSentAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "welcomeSentAt")
          }
        }

        public struct Avatar: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
            GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String, mimeType: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var mimeType: String {
            get {
              return snapshot["mimeType"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "mimeType")
            }
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }

        public struct Profile: GraphQLSelectionSet {
          public static let possibleTypes = ["Profile"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("website", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(phone: String? = nil, title: String? = nil, website: String? = nil) {
            self.init(snapshot: ["__typename": "Profile", "phone": phone, "title": title, "website": website])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var website: String? {
            get {
              return snapshot["website"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "website")
            }
          }
        }
      }
    }
  }
}

public final class DeleteTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTask($id: ID!) {\n  deleteTask(id: $id) {\n    __typename\n    completed\n    completionDate\n    createdAt\n    difficulty\n    habit {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    rating\n    updatedAt\n    version\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTask", arguments: ["id": GraphQLVariable("id")], type: .object(DeleteTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTask: DeleteTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTask": deleteTask.flatMap { $0.snapshot }])
    }

    public var deleteTask: DeleteTask? {
      get {
        return (snapshot["deleteTask"] as? Snapshot).flatMap { DeleteTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTask")
      }
    }

    public struct DeleteTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("difficulty", type: .scalar(Int.self)),
        GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("rating", type: .scalar(Int.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("version", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var completed: Bool {
        get {
          return snapshot["completed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "completed")
        }
      }

      public var completionDate: String {
        get {
          return snapshot["completionDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "completionDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var difficulty: Int? {
        get {
          return snapshot["difficulty"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "difficulty")
        }
      }

      public var habit: Habit {
        get {
          return Habit(snapshot: snapshot["habit"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "habit")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var rating: Int? {
        get {
          return snapshot["rating"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: String? {
        get {
          return snapshot["version"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser {\n  deleteUser {\n    __typename\n    avatar {\n      __typename\n      bucket\n      key\n      region\n      mimeType\n    }\n    createdAt\n    email\n    expiresAt\n    habits {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    name\n    profile {\n      __typename\n      address {\n        __typename\n        country\n        locality\n        postalCode\n        region\n        street\n      }\n      phone\n      title\n      website\n    }\n    role\n    status\n    updatedAt\n    welcomeSentAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .object(Avatar.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("expiresAt", type: .scalar(String.self)),
        GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("role", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("welcomeSentAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var avatar: Avatar? {
        get {
          return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var expiresAt: String? {
        get {
          return snapshot["expiresAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "expiresAt")
        }
      }

      public var habits: [Habit] {
        get {
          return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var role: String {
        get {
          return snapshot["role"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "role")
        }
      }

      public var status: UserStatus {
        get {
          return snapshot["status"]! as! UserStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var welcomeSentAt: String? {
        get {
          return snapshot["welcomeSentAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "welcomeSentAt")
        }
      }

      public struct Avatar: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
          GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String, mimeType: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }

        public var mimeType: String {
          get {
            return snapshot["mimeType"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "mimeType")
          }
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("address", type: .object(Address.selections)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(address: Address? = nil, phone: String? = nil, title: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "Profile", "address": address.flatMap { $0.snapshot }, "phone": phone, "title": title, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var address: Address? {
          get {
            return (snapshot["address"] as? Snapshot).flatMap { Address(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "address")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }

        public struct Address: GraphQLSelectionSet {
          public static let possibleTypes = ["Address"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("country", type: .scalar(String.self)),
            GraphQLField("locality", type: .scalar(String.self)),
            GraphQLField("postalCode", type: .scalar(String.self)),
            GraphQLField("region", type: .scalar(String.self)),
            GraphQLField("street", type: .list(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(country: String? = nil, locality: String? = nil, postalCode: String? = nil, region: String? = nil, street: [String?]? = nil) {
            self.init(snapshot: ["__typename": "Address", "country": country, "locality": locality, "postalCode": postalCode, "region": region, "street": street])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var country: String? {
            get {
              return snapshot["country"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "country")
            }
          }

          public var locality: String? {
            get {
              return snapshot["locality"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "locality")
            }
          }

          public var postalCode: String? {
            get {
              return snapshot["postalCode"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "postalCode")
            }
          }

          public var region: String? {
            get {
              return snapshot["region"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var street: [String?]? {
            get {
              return snapshot["street"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "street")
            }
          }
        }
      }
    }
  }
}

public final class UpdateHabitMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateHabit($category: Category, $description: String, $enableWeekends: Boolean, $id: ID!, $place: String, $time: String, $trigger: String, $userId: String, $why: String) {\n  updateHabit(category: $category, description: $description, enableWeekends: $enableWeekends, id: $id, place: $place, time: $time, trigger: $trigger, userId: $userId, why: $why) {\n    __typename\n    category\n    createdAt\n    deletedAt\n    description\n    enableWeekends\n    id\n    place\n    sort\n    tasks {\n      __typename\n      completed\n      completionDate\n      createdAt\n      difficulty\n      habit {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      rating\n      updatedAt\n      version\n    }\n    time\n    trigger\n    updatedAt\n    userId\n    user {\n      __typename\n      avatar {\n        __typename\n        bucket\n        key\n        region\n        mimeType\n      }\n      createdAt\n      email\n      expiresAt\n      habits {\n        __typename\n        createdAt\n        deletedAt\n        description\n        enableWeekends\n        id\n        place\n        sort\n        time\n        trigger\n        updatedAt\n        userId\n        why\n      }\n      id\n      name\n      profile {\n        __typename\n        phone\n        title\n        website\n      }\n      role\n      status\n      updatedAt\n      welcomeSentAt\n    }\n    why\n  }\n}"

  public var category: Category?
  public var description: String?
  public var enableWeekends: Bool?
  public var id: GraphQLID
  public var place: String?
  public var time: String?
  public var trigger: String?
  public var userId: String?
  public var why: String?

  public init(category: Category? = nil, description: String? = nil, enableWeekends: Bool? = nil, id: GraphQLID, place: String? = nil, time: String? = nil, trigger: String? = nil, userId: String? = nil, why: String? = nil) {
    self.category = category
    self.description = description
    self.enableWeekends = enableWeekends
    self.id = id
    self.place = place
    self.time = time
    self.trigger = trigger
    self.userId = userId
    self.why = why
  }

  public var variables: GraphQLMap? {
    return ["category": category, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "time": time, "trigger": trigger, "userId": userId, "why": why]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateHabit", arguments: ["category": GraphQLVariable("category"), "description": GraphQLVariable("description"), "enableWeekends": GraphQLVariable("enableWeekends"), "id": GraphQLVariable("id"), "place": GraphQLVariable("place"), "time": GraphQLVariable("time"), "trigger": GraphQLVariable("trigger"), "userId": GraphQLVariable("userId"), "why": GraphQLVariable("why")], type: .nonNull(.object(UpdateHabit.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateHabit: UpdateHabit) {
      self.init(snapshot: ["__typename": "Mutation", "updateHabit": updateHabit.snapshot])
    }

    public var updateHabit: UpdateHabit {
      get {
        return UpdateHabit(snapshot: snapshot["updateHabit"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "updateHabit")
      }
    }

    public struct UpdateHabit: GraphQLSelectionSet {
      public static let possibleTypes = ["Habit"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(Category.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("deletedAt", type: .scalar(String.self)),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("enableWeekends", type: .scalar(Bool.self)),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("place", type: .scalar(String.self)),
        GraphQLField("sort", type: .nonNull(.scalar(String.self))),
        GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
        GraphQLField("time", type: .nonNull(.scalar(String.self))),
        GraphQLField("trigger", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
        GraphQLField("why", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
        self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: Category {
        get {
          return snapshot["category"]! as! Category
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var deletedAt: String? {
        get {
          return snapshot["deletedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deletedAt")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var enableWeekends: Bool? {
        get {
          return snapshot["enableWeekends"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "enableWeekends")
        }
      }

      public var id: String {
        get {
          return snapshot["id"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var place: String? {
        get {
          return snapshot["place"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "place")
        }
      }

      public var sort: String {
        get {
          return snapshot["sort"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sort")
        }
      }

      public var tasks: [Task] {
        get {
          return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
        }
      }

      public var time: String {
        get {
          return snapshot["time"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }

      public var trigger: String? {
        get {
          return snapshot["trigger"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "trigger")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public var why: String? {
        get {
          return snapshot["why"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "why")
        }
      }

      public struct Task: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("difficulty", type: .scalar(Int.self)),
          GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("rating", type: .scalar(Int.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("version", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var completed: Bool {
          get {
            return snapshot["completed"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "completed")
          }
        }

        public var completionDate: String {
          get {
            return snapshot["completionDate"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "completionDate")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var difficulty: Int? {
          get {
            return snapshot["difficulty"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "difficulty")
          }
        }

        public var habit: Habit {
          get {
            return Habit(snapshot: snapshot["habit"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "habit")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var rating: Int? {
          get {
            return snapshot["rating"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "rating")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var version: String? {
          get {
            return snapshot["version"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("expiresAt", type: .scalar(String.self)),
          GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("profile", type: .object(Profile.selections)),
          GraphQLField("role", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("welcomeSentAt", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
          self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var avatar: Avatar? {
          get {
            return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var email: String {
          get {
            return snapshot["email"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "email")
          }
        }

        public var expiresAt: String? {
          get {
            return snapshot["expiresAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "expiresAt")
          }
        }

        public var habits: [Habit] {
          get {
            return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var profile: Profile? {
          get {
            return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "profile")
          }
        }

        public var role: String {
          get {
            return snapshot["role"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "role")
          }
        }

        public var status: UserStatus {
          get {
            return snapshot["status"]! as! UserStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var welcomeSentAt: String? {
          get {
            return snapshot["welcomeSentAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "welcomeSentAt")
          }
        }

        public struct Avatar: GraphQLSelectionSet {
          public static let possibleTypes = ["S3Object"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
            GraphQLField("key", type: .nonNull(.scalar(String.self))),
            GraphQLField("region", type: .nonNull(.scalar(String.self))),
            GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(bucket: String, key: String, region: String, mimeType: String) {
            self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bucket: String {
            get {
              return snapshot["bucket"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "bucket")
            }
          }

          public var key: String {
            get {
              return snapshot["key"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "key")
            }
          }

          public var region: String {
            get {
              return snapshot["region"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var mimeType: String {
            get {
              return snapshot["mimeType"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "mimeType")
            }
          }
        }

        public struct Habit: GraphQLSelectionSet {
          public static let possibleTypes = ["Habit"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("deletedAt", type: .scalar(String.self)),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("enableWeekends", type: .scalar(Bool.self)),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("place", type: .scalar(String.self)),
            GraphQLField("sort", type: .nonNull(.scalar(String.self))),
            GraphQLField("time", type: .nonNull(.scalar(String.self))),
            GraphQLField("trigger", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("why", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, why: String? = nil) {
            self.init(snapshot: ["__typename": "Habit", "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "why": why])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var deletedAt: String? {
            get {
              return snapshot["deletedAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "deletedAt")
            }
          }

          public var description: String {
            get {
              return snapshot["description"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var enableWeekends: Bool? {
            get {
              return snapshot["enableWeekends"] as? Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "enableWeekends")
            }
          }

          public var id: String {
            get {
              return snapshot["id"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var place: String? {
            get {
              return snapshot["place"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "place")
            }
          }

          public var sort: String {
            get {
              return snapshot["sort"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sort")
            }
          }

          public var time: String {
            get {
              return snapshot["time"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "time")
            }
          }

          public var trigger: String? {
            get {
              return snapshot["trigger"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "trigger")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userId"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }

          public var why: String? {
            get {
              return snapshot["why"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "why")
            }
          }
        }

        public struct Profile: GraphQLSelectionSet {
          public static let possibleTypes = ["Profile"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("website", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(phone: String? = nil, title: String? = nil, website: String? = nil) {
            self.init(snapshot: ["__typename": "Profile", "phone": phone, "title": title, "website": website])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var website: String? {
            get {
              return snapshot["website"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "website")
            }
          }
        }
      }
    }
  }
}

public final class UpdateTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTask($completed: Boolean!, $completionDate: String, $difficulty: Int, $id: ID!, $rating: Int) {\n  updateTask(completed: $completed, completionDate: $completionDate, difficulty: $difficulty, id: $id, rating: $rating) {\n    __typename\n    completed\n    completionDate\n    createdAt\n    difficulty\n    habit {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    rating\n    updatedAt\n    version\n  }\n}"

  public var completed: Bool
  public var completionDate: String?
  public var difficulty: Int?
  public var id: GraphQLID
  public var rating: Int?

  public init(completed: Bool, completionDate: String? = nil, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil) {
    self.completed = completed
    self.completionDate = completionDate
    self.difficulty = difficulty
    self.id = id
    self.rating = rating
  }

  public var variables: GraphQLMap? {
    return ["completed": completed, "completionDate": completionDate, "difficulty": difficulty, "id": id, "rating": rating]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTask", arguments: ["completed": GraphQLVariable("completed"), "completionDate": GraphQLVariable("completionDate"), "difficulty": GraphQLVariable("difficulty"), "id": GraphQLVariable("id"), "rating": GraphQLVariable("rating")], type: .object(UpdateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTask: UpdateTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTask": updateTask.flatMap { $0.snapshot }])
    }

    public var updateTask: UpdateTask? {
      get {
        return (snapshot["updateTask"] as? Snapshot).flatMap { UpdateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTask")
      }
    }

    public struct UpdateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("difficulty", type: .scalar(Int.self)),
        GraphQLField("habit", type: .nonNull(.object(Habit.selections))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("rating", type: .scalar(Int.self)),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("version", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, habit: Habit, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "habit": habit.snapshot, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var completed: Bool {
        get {
          return snapshot["completed"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "completed")
        }
      }

      public var completionDate: String {
        get {
          return snapshot["completionDate"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "completionDate")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var difficulty: Int? {
        get {
          return snapshot["difficulty"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "difficulty")
        }
      }

      public var habit: Habit {
        get {
          return Habit(snapshot: snapshot["habit"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "habit")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var rating: Int? {
        get {
          return snapshot["rating"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "rating")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var version: String? {
        get {
          return snapshot["version"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($avatar: S3ObjectInput, $email: String, $name: String, $profile: ProfileInput) {\n  updateUser(avatar: $avatar, email: $email, name: $name, profile: $profile) {\n    __typename\n    avatar {\n      __typename\n      bucket\n      key\n      region\n      mimeType\n    }\n    createdAt\n    email\n    expiresAt\n    habits {\n      __typename\n      category\n      createdAt\n      deletedAt\n      description\n      enableWeekends\n      id\n      place\n      sort\n      tasks {\n        __typename\n        completed\n        completionDate\n        createdAt\n        difficulty\n        id\n        rating\n        updatedAt\n        version\n      }\n      time\n      trigger\n      updatedAt\n      userId\n      user {\n        __typename\n        createdAt\n        email\n        expiresAt\n        id\n        name\n        role\n        updatedAt\n        welcomeSentAt\n      }\n      why\n    }\n    id\n    name\n    profile {\n      __typename\n      address {\n        __typename\n        country\n        locality\n        postalCode\n        region\n        street\n      }\n      phone\n      title\n      website\n    }\n    role\n    status\n    updatedAt\n    welcomeSentAt\n  }\n}"

  public var avatar: S3ObjectInput?
  public var email: String?
  public var name: String?
  public var profile: ProfileInput?

  public init(avatar: S3ObjectInput? = nil, email: String? = nil, name: String? = nil, profile: ProfileInput? = nil) {
    self.avatar = avatar
    self.email = email
    self.name = name
    self.profile = profile
  }

  public var variables: GraphQLMap? {
    return ["avatar": avatar, "email": email, "name": name, "profile": profile]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["avatar": GraphQLVariable("avatar"), "email": GraphQLVariable("email"), "name": GraphQLVariable("name"), "profile": GraphQLVariable("profile")], type: .nonNull(.object(UpdateUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.snapshot])
    }

    public var updateUser: UpdateUser {
      get {
        return UpdateUser(snapshot: snapshot["updateUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("avatar", type: .object(Avatar.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .nonNull(.scalar(String.self))),
        GraphQLField("expiresAt", type: .scalar(String.self)),
        GraphQLField("habits", type: .nonNull(.list(.nonNull(.object(Habit.selections))))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("profile", type: .object(Profile.selections)),
        GraphQLField("role", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(UserStatus.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("welcomeSentAt", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(avatar: Avatar? = nil, createdAt: String, email: String, expiresAt: String? = nil, habits: [Habit], id: GraphQLID, name: String? = nil, profile: Profile? = nil, role: String, status: UserStatus, updatedAt: String, welcomeSentAt: String? = nil) {
        self.init(snapshot: ["__typename": "User", "avatar": avatar.flatMap { $0.snapshot }, "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "habits": habits.map { $0.snapshot }, "id": id, "name": name, "profile": profile.flatMap { $0.snapshot }, "role": role, "status": status, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var avatar: Avatar? {
        get {
          return (snapshot["avatar"] as? Snapshot).flatMap { Avatar(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "avatar")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var email: String {
        get {
          return snapshot["email"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var expiresAt: String? {
        get {
          return snapshot["expiresAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "expiresAt")
        }
      }

      public var habits: [Habit] {
        get {
          return (snapshot["habits"] as! [Snapshot]).map { Habit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "habits")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var profile: Profile? {
        get {
          return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "profile")
        }
      }

      public var role: String {
        get {
          return snapshot["role"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "role")
        }
      }

      public var status: UserStatus {
        get {
          return snapshot["status"]! as! UserStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var welcomeSentAt: String? {
        get {
          return snapshot["welcomeSentAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "welcomeSentAt")
        }
      }

      public struct Avatar: GraphQLSelectionSet {
        public static let possibleTypes = ["S3Object"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bucket", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("region", type: .nonNull(.scalar(String.self))),
          GraphQLField("mimeType", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(bucket: String, key: String, region: String, mimeType: String) {
          self.init(snapshot: ["__typename": "S3Object", "bucket": bucket, "key": key, "region": region, "mimeType": mimeType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var bucket: String {
          get {
            return snapshot["bucket"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "bucket")
          }
        }

        public var key: String {
          get {
            return snapshot["key"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "key")
          }
        }

        public var region: String {
          get {
            return snapshot["region"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "region")
          }
        }

        public var mimeType: String {
          get {
            return snapshot["mimeType"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "mimeType")
          }
        }
      }

      public struct Habit: GraphQLSelectionSet {
        public static let possibleTypes = ["Habit"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedAt", type: .scalar(String.self)),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("enableWeekends", type: .scalar(Bool.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("place", type: .scalar(String.self)),
          GraphQLField("sort", type: .nonNull(.scalar(String.self))),
          GraphQLField("tasks", type: .nonNull(.list(.nonNull(.object(Task.selections))))),
          GraphQLField("time", type: .nonNull(.scalar(String.self))),
          GraphQLField("trigger", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("why", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(category: Category, createdAt: String, deletedAt: String? = nil, description: String, enableWeekends: Bool? = nil, id: String, place: String? = nil, sort: String, tasks: [Task], time: String, trigger: String? = nil, updatedAt: String, userId: GraphQLID, user: User, why: String? = nil) {
          self.init(snapshot: ["__typename": "Habit", "category": category, "createdAt": createdAt, "deletedAt": deletedAt, "description": description, "enableWeekends": enableWeekends, "id": id, "place": place, "sort": sort, "tasks": tasks.map { $0.snapshot }, "time": time, "trigger": trigger, "updatedAt": updatedAt, "userId": userId, "user": user.snapshot, "why": why])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var category: Category {
          get {
            return snapshot["category"]! as! Category
          }
          set {
            snapshot.updateValue(newValue, forKey: "category")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var deletedAt: String? {
          get {
            return snapshot["deletedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "deletedAt")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var enableWeekends: Bool? {
          get {
            return snapshot["enableWeekends"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "enableWeekends")
          }
        }

        public var id: String {
          get {
            return snapshot["id"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var place: String? {
          get {
            return snapshot["place"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "place")
          }
        }

        public var sort: String {
          get {
            return snapshot["sort"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "sort")
          }
        }

        public var tasks: [Task] {
          get {
            return (snapshot["tasks"] as! [Snapshot]).map { Task(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "tasks")
          }
        }

        public var time: String {
          get {
            return snapshot["time"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }

        public var trigger: String? {
          get {
            return snapshot["trigger"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "trigger")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var why: String? {
          get {
            return snapshot["why"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "why")
          }
        }

        public struct Task: GraphQLSelectionSet {
          public static let possibleTypes = ["Task"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("completed", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("completionDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("difficulty", type: .scalar(Int.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("version", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(completed: Bool, completionDate: String, createdAt: String, difficulty: Int? = nil, id: GraphQLID, rating: Int? = nil, updatedAt: String, version: String? = nil) {
            self.init(snapshot: ["__typename": "Task", "completed": completed, "completionDate": completionDate, "createdAt": createdAt, "difficulty": difficulty, "id": id, "rating": rating, "updatedAt": updatedAt, "version": version])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var completed: Bool {
            get {
              return snapshot["completed"]! as! Bool
            }
            set {
              snapshot.updateValue(newValue, forKey: "completed")
            }
          }

          public var completionDate: String {
            get {
              return snapshot["completionDate"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "completionDate")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var difficulty: Int? {
            get {
              return snapshot["difficulty"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "difficulty")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var rating: Int? {
            get {
              return snapshot["rating"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "rating")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var version: String? {
            get {
              return snapshot["version"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "version")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("expiresAt", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("role", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("welcomeSentAt", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(createdAt: String, email: String, expiresAt: String? = nil, id: GraphQLID, name: String? = nil, role: String, updatedAt: String, welcomeSentAt: String? = nil) {
            self.init(snapshot: ["__typename": "User", "createdAt": createdAt, "email": email, "expiresAt": expiresAt, "id": id, "name": name, "role": role, "updatedAt": updatedAt, "welcomeSentAt": welcomeSentAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var email: String {
            get {
              return snapshot["email"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          public var expiresAt: String? {
            get {
              return snapshot["expiresAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "expiresAt")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var role: String {
            get {
              return snapshot["role"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "role")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var welcomeSentAt: String? {
            get {
              return snapshot["welcomeSentAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "welcomeSentAt")
            }
          }
        }
      }

      public struct Profile: GraphQLSelectionSet {
        public static let possibleTypes = ["Profile"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("address", type: .object(Address.selections)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(address: Address? = nil, phone: String? = nil, title: String? = nil, website: String? = nil) {
          self.init(snapshot: ["__typename": "Profile", "address": address.flatMap { $0.snapshot }, "phone": phone, "title": title, "website": website])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var address: Address? {
          get {
            return (snapshot["address"] as? Snapshot).flatMap { Address(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "address")
          }
        }

        public var phone: String? {
          get {
            return snapshot["phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "phone")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var website: String? {
          get {
            return snapshot["website"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "website")
          }
        }

        public struct Address: GraphQLSelectionSet {
          public static let possibleTypes = ["Address"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("country", type: .scalar(String.self)),
            GraphQLField("locality", type: .scalar(String.self)),
            GraphQLField("postalCode", type: .scalar(String.self)),
            GraphQLField("region", type: .scalar(String.self)),
            GraphQLField("street", type: .list(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(country: String? = nil, locality: String? = nil, postalCode: String? = nil, region: String? = nil, street: [String?]? = nil) {
            self.init(snapshot: ["__typename": "Address", "country": country, "locality": locality, "postalCode": postalCode, "region": region, "street": street])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var country: String? {
            get {
              return snapshot["country"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "country")
            }
          }

          public var locality: String? {
            get {
              return snapshot["locality"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "locality")
            }
          }

          public var postalCode: String? {
            get {
              return snapshot["postalCode"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "postalCode")
            }
          }

          public var region: String? {
            get {
              return snapshot["region"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "region")
            }
          }

          public var street: [String?]? {
            get {
              return snapshot["street"] as? [String?]
            }
            set {
              snapshot.updateValue(newValue, forKey: "street")
            }
          }
        }
      }
    }
  }
}



extension S3Object: AWSS3ObjectProtocol {
  public func getBucketName() -> String {
      return bucket
  }

  public func getKeyName() -> String {
      return key
  }

  public func getRegion() -> String {
      return region
  }
}

extension S3ObjectInput: AWSS3ObjectProtocol, AWSS3InputObjectProtocol {
  public func getLocalSourceFileURL() -> URL? {
      return URL(string: self.localUri)
  }

  public func getMimeType() -> String {
      return self.mimeType
  }

  public func getBucketName() -> String {
      return self.bucket
  }

  public func getKeyName() -> String {
      return self.key
  }

  public func getRegion() -> String {
      return self.region
  }

}

import AWSS3
extension AWSS3PreSignedURLBuilder: AWSS3ObjectPresignedURLGenerator  {
  public func getPresignedURL(s3Object: AWSS3ObjectProtocol) -> URL? {
      let request = AWSS3GetPreSignedURLRequest()
      request.bucket = s3Object.getBucketName()
      request.key = s3Object.getKeyName()
      var url : URL?
      self.getPreSignedURL(request).continueWith { (task) -> Any? in
          url = task.result as URL?
          }.waitUntilFinished()
      return url
  }
}

extension AWSS3TransferUtility: AWSS3ObjectManager {

  public func download(s3Object: AWSS3ObjectProtocol, toURL: URL, completion: @escaping ((Bool, Error?) -> Void)) {

      let completionBlock: AWSS3TransferUtilityDownloadCompletionHandlerBlock = { task, url, data, error  -> Void in
          if let _ = error {
              completion(false, error)
          } else {
              completion(true, nil)
          }
      }
      let _ = self.download(to: toURL, bucket: s3Object.getBucketName(), key: s3Object.getKeyName(), expression: nil, completionHandler: completionBlock)
  }

  public func upload(s3Object: AWSS3ObjectProtocol & AWSS3InputObjectProtocol, completion: @escaping ((_ success: Bool, _ error: Error?) -> Void)) {
      let completionBlock : AWSS3TransferUtilityUploadCompletionHandlerBlock = { task, error  -> Void in
          if let _ = error {
              completion(false, error)
          } else {
              completion(true, nil)
          }
      }
      let _ = self.uploadFile(s3Object.getLocalSourceFileURL()!, bucket: s3Object.getBucketName(), key: s3Object.getKeyName(), contentType: s3Object.getMimeType(), expression: nil, completionHandler: completionBlock).continueWith { (task) -> Any? in
          if let err = task.error {
              completion(false, err)
          }
          return nil
      }
  }
}