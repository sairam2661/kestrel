"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, f32) -> f32, sym_name = "add_and_square"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %2 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %3 = "arith.mulf"(%2, %2) : (f32, f32) -> f32
    "spirv.ReturnValue"(%3) : (f32) -> ()
  }) : () -> ()
  "spirv.func"() <{function_type = (f32) -> f32, sym_name = "negate_and_double"}> ({
  ^bb0(%arg0: f32):
    %1 = "arith.negf"(%arg0) : (f32) -> f32
    %2 = "arith.mulf"(%1, %2) : (f32, f32) -> f32
    "spirv.ReturnValue"(%2) : (f32) -> ()
  }) : () -> ()
  "spirv.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %2 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %3 = "arith.mulf"(%2, %2) : (f32, f32) -> f32
    %4 = "arith.negf"(%3) : (f32) -> f32
    "spirv.ReturnValue"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()