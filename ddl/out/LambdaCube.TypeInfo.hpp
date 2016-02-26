// generated file, do not modify!
// 2016-02-26T11:37:22.609565000000Z

#ifndef HEADER_LambdaCube.TypeInfo_H
#define HEADER_LambdaCube.TypeInfo_H

#include "RT.hpp"

#include "LambdaCube.IR.hpp"

class Range {
  public:
    enum class tag { 
      Range
    } tag;
};
namespace data { 
  class Range : public ::Range {
    public:
      Int startLine;
      Int startColumn;
      Int endLine;
      Int endColumn;
      Range() { tag = tag::Range; }
  };
}
class TypeInfo {
  public:
    enum class tag { 
      TypeInfo
    } tag;
};
namespace data { 
  class TypeInfo : public ::TypeInfo {
    public:
      std::shared_ptr<::Range> range;
      String text;
      TypeInfo() { tag = tag::TypeInfo; }
  };
}
class CompileResult {
  public:
    enum class tag { 
      CompileError,
      Compiled
    } tag;
};
namespace data { 
  class CompileError : public ::CompileResult {
    public:
      std::vector<std::shared_ptr<::Range>> _0;
      String _1;
      std::vector<std::shared_ptr<::TypeInfo>> _2;
      CompileError() { tag = tag::CompileError; }
  };
  class Compiled : public ::CompileResult {
    public:
      String _0;
      std::shared_ptr<::Pipeline> _1;
      std::vector<std::shared_ptr<::TypeInfo>> _2;
      Compiled() { tag = tag::Compiled; }
  };
}
#endif