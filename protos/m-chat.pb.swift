/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: m-chat.proto
 *
 */

import Foundation
import SwiftProtobuf


public enum Otsimo_Mchat_ResultType: ProtobufEnum {
  public typealias RawValue = Int
  case pass // = 0
  case fail // = 1
  case askAnother // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .pass
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .pass
    case 1: self = .fail
    case 2: self = .askAnother
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public init?(name: String) {
    switch name {
    case "pass": self = .pass
    case "fail": self = .fail
    case "askAnother": self = .askAnother
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "PASS": self = .pass
    case "FAIL": self = .fail
    case "ASK_ANOTHER": self = .askAnother
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "PASS": self = .pass
    case "FAIL": self = .fail
    case "ASK_ANOTHER": self = .askAnother
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .pass: return 0
      case .fail: return 1
      case .askAnother: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .pass: return "\"PASS\""
      case .fail: return "\"FAIL\""
      case .askAnother: return "\"ASK_ANOTHER\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .pass: return ".pass"
      case .fail: return ".fail"
      case .askAnother: return ".askAnother"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

public enum Otsimo_Mchat_QueryType: ProtobufEnum {
  public typealias RawValue = Int
  case mostOftenYes // = 0
  case mostOftenNo // = 1
  case allOfYes // = 2
  case allOfNo // = 3
  case oneOfYes // = 4
  case oneOfNo // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .mostOftenYes
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .mostOftenYes
    case 1: self = .mostOftenNo
    case 2: self = .allOfYes
    case 3: self = .allOfNo
    case 4: self = .oneOfYes
    case 5: self = .oneOfNo
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public init?(name: String) {
    switch name {
    case "mostOftenYes": self = .mostOftenYes
    case "mostOftenNo": self = .mostOftenNo
    case "allOfYes": self = .allOfYes
    case "allOfNo": self = .allOfNo
    case "oneOfYes": self = .oneOfYes
    case "oneOfNo": self = .oneOfNo
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "MOST_OFTEN_YES": self = .mostOftenYes
    case "MOST_OFTEN_NO": self = .mostOftenNo
    case "ALL_OF_YES": self = .allOfYes
    case "ALL_OF_NO": self = .allOfNo
    case "ONE_OF_YES": self = .oneOfYes
    case "ONE_OF_NO": self = .oneOfNo
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "MOST_OFTEN_YES": self = .mostOftenYes
    case "MOST_OFTEN_NO": self = .mostOftenNo
    case "ALL_OF_YES": self = .allOfYes
    case "ALL_OF_NO": self = .allOfNo
    case "ONE_OF_YES": self = .oneOfYes
    case "ONE_OF_NO": self = .oneOfNo
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .mostOftenYes: return 0
      case .mostOftenNo: return 1
      case .allOfYes: return 2
      case .allOfNo: return 3
      case .oneOfYes: return 4
      case .oneOfNo: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .mostOftenYes: return "\"MOST_OFTEN_YES\""
      case .mostOftenNo: return "\"MOST_OFTEN_NO\""
      case .allOfYes: return "\"ALL_OF_YES\""
      case .allOfNo: return "\"ALL_OF_NO\""
      case .oneOfYes: return "\"ONE_OF_YES\""
      case .oneOfNo: return "\"ONE_OF_NO\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .mostOftenYes: return ".mostOftenYes"
      case .mostOftenNo: return ".mostOftenNo"
      case .allOfYes: return ".allOfYes"
      case .allOfNo: return ".allOfNo"
      case .oneOfYes: return ".oneOfYes"
      case .oneOfNo: return ".oneOfNo"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

public struct Otsimo_Mchat_Answer: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Otsimo_Mchat_Answer"}
  public var protoMessageName: String {return "Answer"}
  public var protoPackageName: String {return "otsimo.mchat"}
  public var jsonFieldNames: [String: Int] {return [
    "result": 1,
    "nextQuestion": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "result": 1,
    "next_question": 2,
  ]}

  public var result: Otsimo_Mchat_ResultType = Otsimo_Mchat_ResultType.pass

  public var nextQuestion: Int32 = 0

  public init() {}

  public init(result: Otsimo_Mchat_ResultType? = nil,
    nextQuestion: Int32? = nil)
  {
    if let v = result {
      self.result = v
    }
    if let v = nextQuestion {
      self.nextQuestion = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: Otsimo_Mchat_ResultType.self, value: &result)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &nextQuestion)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if result != Otsimo_Mchat_ResultType.pass {
      try visitor.visitSingularField(fieldType: Otsimo_Mchat_ResultType.self, value: result, protoFieldNumber: 1, protoFieldName: "result", jsonFieldName: "result", swiftFieldName: "result")
    }
    if nextQuestion != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: nextQuestion, protoFieldNumber: 2, protoFieldName: "next_question", jsonFieldName: "nextQuestion", swiftFieldName: "nextQuestion")
    }
  }

  public func _protoc_generated_isEqualTo(other: Otsimo_Mchat_Answer) -> Bool {
    if result != other.result {return false}
    if nextQuestion != other.nextQuestion {return false}
    return true
  }
}

public struct Otsimo_Mchat_Query: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Otsimo_Mchat_Query"}
  public var protoMessageName: String {return "Query"}
  public var protoPackageName: String {return "otsimo.mchat"}
  public var jsonFieldNames: [String: Int] {return [
    "group": 1,
    "result": 2,
    "nextQuestion": 3,
    "actions": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "group": 1,
    "result": 2,
    "next_question": 3,
    "actions": 4,
  ]}

  public var group: String = ""

  public var result: Otsimo_Mchat_ResultType = Otsimo_Mchat_ResultType.pass

  public var nextQuestion: Int32 = 0

  ///   Actions are ORed
  public var actions: [Otsimo_Mchat_QueryType] = []

  public init() {}

  public init(group: String? = nil,
    result: Otsimo_Mchat_ResultType? = nil,
    nextQuestion: Int32? = nil,
    actions: [Otsimo_Mchat_QueryType] = [])
  {
    if let v = group {
      self.group = v
    }
    if let v = result {
      self.result = v
    }
    if let v = nextQuestion {
      self.nextQuestion = v
    }
    if !actions.isEmpty {
      self.actions = actions
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &group)
    case 2: handled = try setter.decodeSingularField(fieldType: Otsimo_Mchat_ResultType.self, value: &result)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &nextQuestion)
    case 4: handled = try setter.decodePackedField(fieldType: Otsimo_Mchat_QueryType.self, value: &actions)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if group != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: group, protoFieldNumber: 1, protoFieldName: "group", jsonFieldName: "group", swiftFieldName: "group")
    }
    if result != Otsimo_Mchat_ResultType.pass {
      try visitor.visitSingularField(fieldType: Otsimo_Mchat_ResultType.self, value: result, protoFieldNumber: 2, protoFieldName: "result", jsonFieldName: "result", swiftFieldName: "result")
    }
    if nextQuestion != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: nextQuestion, protoFieldNumber: 3, protoFieldName: "next_question", jsonFieldName: "nextQuestion", swiftFieldName: "nextQuestion")
    }
    if !actions.isEmpty {
      try visitor.visitPackedField(fieldType: Otsimo_Mchat_QueryType.self, value: actions, protoFieldNumber: 4, protoFieldName: "actions", jsonFieldName: "actions", swiftFieldName: "actions")
    }
  }

  public func _protoc_generated_isEqualTo(other: Otsimo_Mchat_Query) -> Bool {
    if group != other.group {return false}
    if result != other.result {return false}
    if nextQuestion != other.nextQuestion {return false}
    if actions != other.actions {return false}
    return true
  }
}

public struct Otsimo_Mchat_YesNoQuestion: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Otsimo_Mchat_YesNoQuestion"}
  public var protoMessageName: String {return "YesNoQuestion"}
  public var protoPackageName: String {return "otsimo.mchat"}
  public var jsonFieldNames: [String: Int] {return [
    "yes": 1,
    "no": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "yes": 1,
    "no": 2,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Otsimo_Mchat_YesNoQuestion
    var _yes: Otsimo_Mchat_Answer? = nil
    var _no: Otsimo_Mchat_Answer? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularMessageField(fieldType: Otsimo_Mchat_Answer.self, value: &_yes)
      case 2: handled = try setter.decodeSingularMessageField(fieldType: Otsimo_Mchat_Answer.self, value: &_no)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _yes {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "yes", jsonFieldName: "yes", swiftFieldName: "yes")
      }
      if let v = _no {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 2, protoFieldName: "no", jsonFieldName: "no", swiftFieldName: "no")
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _yes != other._yes {return false}
      if _no != other._no {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._yes = _yes
      clone._no = _no
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var yes: Otsimo_Mchat_Answer {
    get {return _storage._yes ?? Otsimo_Mchat_Answer()}
    set {_uniqueStorage()._yes = newValue}
  }

  public var no: Otsimo_Mchat_Answer {
    get {return _storage._no ?? Otsimo_Mchat_Answer()}
    set {_uniqueStorage()._no = newValue}
  }

  public init() {}

  public init(yes: Otsimo_Mchat_Answer? = nil,
    no: Otsimo_Mchat_Answer? = nil)
  {
    let storage = _uniqueStorage()
    storage._yes = yes
    storage._no = no
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Otsimo_Mchat_YesNoQuestion) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

public struct Otsimo_Mchat_GroupQuestion: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Otsimo_Mchat_GroupQuestion"}
  public var protoMessageName: String {return "GroupQuestion"}
  public var protoPackageName: String {return "otsimo.mchat"}
  public var jsonFieldNames: [String: Int] {return [
    "questions": 1,
    "query": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "questions": 1,
    "query": 2,
  ]}

  ///   Keys are question ids, values are the group names
  public var questions: Dictionary<Int32,String> = [:]

  public var query: [Otsimo_Mchat_Query] = []

  public init() {}

  public init(questions: Dictionary<Int32,String> = [:],
    query: [Otsimo_Mchat_Query] = [])
  {
    if !questions.isEmpty {
      self.questions = questions
    }
    if !query.isEmpty {
      self.query = query
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeMapField(fieldType: ProtobufMap<ProtobufInt32,ProtobufString>.self, value: &questions)
    case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Otsimo_Mchat_Query.self, value: &query)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !questions.isEmpty {
      try visitor.visitMapField(fieldType: ProtobufMap<ProtobufInt32,ProtobufString>.self, value: questions, protoFieldNumber: 1, protoFieldName: "questions", jsonFieldName: "questions", swiftFieldName: "questions")
    }
    if !query.isEmpty {
      try visitor.visitRepeatedMessageField(value: query, protoFieldNumber: 2, protoFieldName: "query", jsonFieldName: "query", swiftFieldName: "query")
    }
  }

  public func _protoc_generated_isEqualTo(other: Otsimo_Mchat_GroupQuestion) -> Bool {
    if questions != other.questions {return false}
    if query != other.query {return false}
    return true
  }
}

public struct Otsimo_Mchat_Question: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Otsimo_Mchat_Question"}
  public var protoMessageName: String {return "Question"}
  public var protoPackageName: String {return "otsimo.mchat"}
  public var jsonFieldNames: [String: Int] {return [
    "id": 1,
    "text": 2,
    "yesno": 3,
    "group": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "id": 1,
    "text": 2,
    "yesno": 3,
    "group": 4,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Otsimo_Mchat_Question
    var _id: String = ""
    var _text: String = ""
    var _type = Otsimo_Mchat_Question.OneOf_Type()

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_id)
      case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_text)
      case 3, 4:
        handled = try _type.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if _id != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _id, protoFieldNumber: 1, protoFieldName: "id", jsonFieldName: "id", swiftFieldName: "id")
      }
      if _text != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _text, protoFieldNumber: 2, protoFieldName: "text", jsonFieldName: "text", swiftFieldName: "text")
      }
      try _type.traverse(visitor: &visitor, start: 3, end: 5)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _id != other._id {return false}
      if _text != other._text {return false}
      if _type != other._type {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._id = _id
      clone._text = _text
      clone._type = _type
      return clone
    }
  }

  private var _storage = _StorageClass()

  public enum OneOf_Type: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case yesno(Otsimo_Mchat_YesNoQuestion)
    case group(Otsimo_Mchat_GroupQuestion)
    case None

    public init(nilLiteral: ()) {
      self = .None
    }

    public init() {
      self = .None
    }

    public mutating func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      if self != .None && setter.rejectConflictingOneof {
        throw ProtobufDecodingError.duplicatedOneOf
      }
      let handled: Bool
      switch protoFieldNumber {
      case 3:
        var value: Otsimo_Mchat_YesNoQuestion?
        handled = try setter.decodeSingularMessageField(fieldType: Otsimo_Mchat_YesNoQuestion.self, value: &value)
        if let value = value, handled {
          self = .yesno(value)
        }
      case 4:
        var value: Otsimo_Mchat_GroupQuestion?
        handled = try setter.decodeSingularMessageField(fieldType: Otsimo_Mchat_GroupQuestion.self, value: &value)
        if let value = value, handled {
          self = .group(value)
        }
      default:
        handled = false
        self = .None
      }
      return handled
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .yesno(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 3, protoFieldName: "yesno", jsonFieldName: "yesno", swiftFieldName: "yesno")
        }
      case .group(let v):
        if start <= 4 && 4 < end {
          try visitor.visitSingularMessageField(value: v, protoFieldNumber: 4, protoFieldName: "group", jsonFieldName: "group", swiftFieldName: "group")
        }
      case .None:
        break
      }
    }
  }

  ///   ID is question number
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  public var text: String {
    get {return _storage._text}
    set {_uniqueStorage()._text = newValue}
  }

  public var yesno: Otsimo_Mchat_YesNoQuestion? {
    get {
      if case .yesno(let v) = _storage._type {
        return v
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._type = .yesno(newValue)
      } else {
        _uniqueStorage()._type = .None
      }
    }
  }

  public var group: Otsimo_Mchat_GroupQuestion? {
    get {
      if case .group(let v) = _storage._type {
        return v
      }
      return nil
    }
    set {
      if let newValue = newValue {
        _uniqueStorage()._type = .group(newValue)
      } else {
        _uniqueStorage()._type = .None
      }
    }
  }

  public var _type: OneOf_Type {
    get {return _storage._type}
    set {
      _uniqueStorage()._type = newValue
    }
  }

  public init() {}

  public init(id: String? = nil,
    text: String? = nil,
    yesno: Otsimo_Mchat_YesNoQuestion? = nil,
    group: Otsimo_Mchat_GroupQuestion? = nil)
  {
    let storage = _uniqueStorage()
    if let v = id {
      storage._id = v
    }
    if let v = text {
      storage._text = v
    }
    if let v = yesno {
      storage._type = .yesno(v)
    }
    if let v = group {
      storage._type = .group(v)
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Otsimo_Mchat_Question) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

public struct Otsimo_Mchat_Step: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Otsimo_Mchat_Step"}
  public var protoMessageName: String {return "Step"}
  public var protoPackageName: String {return "otsimo.mchat"}
  public var jsonFieldNames: [String: Int] {return [
    "id": 1,
    "firstQuestion": 2,
    "questions": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "id": 1,
    "first_question": 2,
    "questions": 3,
  ]}

  ///   ID is step number
  public var id: String = ""

  public var firstQuestion: Int32 = 0

  public var questions: [Otsimo_Mchat_Question] = []

  public init() {}

  public init(id: String? = nil,
    firstQuestion: Int32? = nil,
    questions: [Otsimo_Mchat_Question] = [])
  {
    if let v = id {
      self.id = v
    }
    if let v = firstQuestion {
      self.firstQuestion = v
    }
    if !questions.isEmpty {
      self.questions = questions
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &id)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &firstQuestion)
    case 3: handled = try setter.decodeRepeatedMessageField(fieldType: Otsimo_Mchat_Question.self, value: &questions)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if id != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: id, protoFieldNumber: 1, protoFieldName: "id", jsonFieldName: "id", swiftFieldName: "id")
    }
    if firstQuestion != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: firstQuestion, protoFieldNumber: 2, protoFieldName: "first_question", jsonFieldName: "firstQuestion", swiftFieldName: "firstQuestion")
    }
    if !questions.isEmpty {
      try visitor.visitRepeatedMessageField(value: questions, protoFieldNumber: 3, protoFieldName: "questions", jsonFieldName: "questions", swiftFieldName: "questions")
    }
  }

  public func _protoc_generated_isEqualTo(other: Otsimo_Mchat_Step) -> Bool {
    if id != other.id {return false}
    if firstQuestion != other.firstQuestion {return false}
    if questions != other.questions {return false}
    return true
  }
}

public func ==(lhs: Otsimo_Mchat_Question.OneOf_Type, rhs: Otsimo_Mchat_Question.OneOf_Type) -> Bool {
  switch (lhs, rhs) {
  case (.yesno(let l), .yesno(let r)): return l == r
  case (.group(let l), .group(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}
