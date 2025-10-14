module {
  func.func @convert_bitcast_roundtip(%arg0: i64) -> i64 {
    %0 = spirv.Bitcast %arg0 : i64 to f64
    %1 = spirv.Bitcast %0 : f64 to i64
    spirv.ReturnValue %1 : i64
  }
}

