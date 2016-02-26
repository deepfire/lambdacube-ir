// generated file, do not modify!
// 2016-02-26T11:37:22.609565000000Z

enum Range {
  case Range(Range_Data)
    struct Range_Data {
      var startLine : Int
      var startColumn : Int
      var endLine : Int
      var endColumn : Int
    }
}

enum TypeInfo {
  case TypeInfo(TypeInfo_Data)
    struct TypeInfo_Data {
      var range : Range
      var text : String
    }
}

enum CompileResult {
  case CompileError(Array<Range>,String,Array<TypeInfo>)
  case Compiled(String,Pipeline,Array<TypeInfo>)
}


extension Int {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension Int32 {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension UInt {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension UInt32 {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension Float {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension Bool {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension String {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension Array {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension Dictionary {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}
extension Maybe {
    var toJSON : [String: AnyObject] {
        return ["":""]
    }
}



extension Range {
  var toJSON : [String: AnyObject] {
    switch self {
      case .Range(let v):
        return [ "tag" : "Range"
               , "startLine" : v.startLine.toJSON
               , "startColumn" : v.startColumn.toJSON
               , "endLine" : v.endLine.toJSON
               , "endColumn" : v.endColumn.toJSON
               ]
    }
  }
}
extension TypeInfo {
  var toJSON : [String: AnyObject] {
    switch self {
      case .TypeInfo(let v):
        return [ "tag" : "TypeInfo"
               , "range" : v.range.toJSON
               , "text" : v.text.toJSON
               ]
    }
  }
}
extension CompileResult {
  var toJSON : [String: AnyObject] {
    switch self {
      case .CompileError(let arg0, let arg1, let arg2):
        return [ "tag" : "CompileError", "arg0" : arg0.toJSON, "arg1" : arg1.toJSON, "arg2" : arg2.toJSON]
      case .Compiled(let arg0, let arg1, let arg2):
        return [ "tag" : "Compiled", "arg0" : arg0.toJSON, "arg1" : arg1.toJSON, "arg2" : arg2.toJSON]
    }
  }
}

enum Maybe<T> {
  case Nothing
  case Just(T)
}

enum Type {
  case Int
  case Int32
  case Word
  case Word32
  case Float
  case Bool
  case String
  case Array(Type)
  case List(Type)
  case Maybe(Type)
  case Map(Type,Type)
  case Range
  case TypeInfo
  case CompileResult
}

func fromJSON(type: Type, personName: String) -> Any {
  switch type {
    case .Int:    return 0
    case .Int32:  return 0
    case .Word:   return 0
    case .Word32: return 0
    case .Float:  return 0.0
    case .Bool:   return false
    case .String: return ""
    case .Array(let a): return fromJSON(a,personName)
    case .List(let a):  return fromJSON(a,personName)
    case .Maybe(let a): return fromJSON(a,personName)
  }
  return 0;
}