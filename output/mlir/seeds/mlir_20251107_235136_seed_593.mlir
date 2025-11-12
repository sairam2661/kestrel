"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, i32) -> f32, sym_name = "spirv_example"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    %1 = "arith.sitofp"(%0) : (i32) -> f32
    %2 = "arith.mulf"(%arg0, %1) : (f32, f32) -> f32
    %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    %4 = "arith.subf"(%3, %1) : (f32, f32) -> f32
    "spirv.ReturnValue"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()