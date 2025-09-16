"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "convert_bitcast_roundtip"}> ({
  ^bb0(%arg0: i64):
    %0 = "spirv.Bitcast"(%arg0) : (i64) -> f64
    %1 = "spirv.Bitcast"(%0) : (f64) -> i64
    "spirv.ReturnValue"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

