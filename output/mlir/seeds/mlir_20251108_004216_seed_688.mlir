"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "complex_arithmetic_spirv"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.cmpf"(%arg1, %arg1) <{operation = "oeq"}> : (f32, f32) -> i1
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%arg0, %arg0) <{operation = "eq"}> : (i32, i32) -> i1
      %3 = "spirv.ReturnValue"(%1) : (f32) -> f32
      %4 = "func.return"(%3, %arg0) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()