"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%0) : (tensor<10xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_sub"}> ({
  ^bb0(%arg2: tensor<10xi32>, %arg3: tensor<10xi32>):
    %1 = "arith.subi"(%arg2, %arg3) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%1) : (tensor<10xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_mul"}> ({
  ^bb0(%arg4: tensor<10xi32>, %arg5: tensor<10xi32>):
    %2 = "arith.muli"(%arg4, %arg5) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%2) : (tensor<10xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "float_add"}> ({
  ^bb0(%arg6: f32, %arg7: f32):
    %3 = "arith.addf"(%arg6, %arg7) : (f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "float_sub"}> ({
  ^bb0(%arg8: f32, %arg9: f32):
    %4 = "arith.subf"(%arg8, %arg9) : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "float_mul"}> ({
  ^bb0(%arg10: f32, %arg11: f32):
    %5 = "arith.mulf"(%arg10, %arg11) : (f32, f32) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "int_add"}> ({
  ^bb0(%arg12: i32, %arg13: i32):
    %6 = "arith.addi"(%arg12, %arg13) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "int_sub"}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %7 = "arith.subi"(%arg14, %arg15) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "int_mul"}> ({
  ^bb0(%arg16: i32, %arg17: i32):
    %8 = "arith.muli"(%arg16, %arg17) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()