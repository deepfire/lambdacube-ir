// generated file, do not modify!
// 2016-11-10T15:07:10.798971000000Z

package LambdaCube.IR;

import java.util.ArrayList;
import java.util.HashMap;
import RT.*;


public class CullMode {
  public enum Tag { 
    CullNone,
    CullFront,
    CullBack
  }
  public Tag tag;

  public class CullFront_ extends CullMode { 
    public FrontFace _0;
    public CullFront_() { tag = CullMode.Tag.CullFront; }
  }
  public class CullBack_ extends CullMode { 
    public FrontFace _0;
    public CullBack_() { tag = CullMode.Tag.CullBack; }
  }
}

