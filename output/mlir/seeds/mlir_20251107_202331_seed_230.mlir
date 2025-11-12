"builtin.module"() ({
  "spirv.func"() <{function_type = (f32) -> f32, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: f32):
    %1 = "arith.constant"() <{value = 0.500000e+00 : f32}> : () -> f32
    %2 = "arith.addf"(%arg0, %1) : (f32, f32) -> f32
    %3 = "arith.cmpf"(%2, %1) {"predicate" = "OEQ"} : (f32, f32) -> i1
    %4 = "arith.select"(%3, %2, %1) : (i1, f32, f32) -> f32
    "spirv.ReturnValue"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()