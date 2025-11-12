"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, i32) -> i64, sym_name = "spv_complex_func"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.muli"(%arg1, %arg1) : (i32, i32) -> i32
    %2 = "arith.extsi"(%1) : (i32) -> i64
    %3 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    %4 = "arith.extsi"(%arg1) : (i32) -> i64
    %5 = "arith.addi"(%2, %4) : (i64, i64) -> i64
    "spirv.ReturnValue"(%5) : (i64) -> ()
  }) : () -> ()
}) : () -> ()