"builtin.module"() ({
  "func.func"() <{function_type = (i1, i32, i32) -> i32, sym_name = "scalar_arith_select"}> ({
  ^bb0(%arg12: i1, %arg13: i32, %arg14: i32):
    %4 = "arith.select"(%arg12, %arg13, %arg14) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "vector_arith_select"}> ({
  ^bb0(%arg9: tensor<2xi1>, %arg10: tensor<2xi32>, %arg11: tensor<2xi32>):
    %3 = "arith.select"(%arg9, %arg10, %arg11) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%3) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "mixed_arith_select"}> ({
  ^bb0(%arg6: i1, %arg7: tensor<2xi32>, %arg8: tensor<2xi32>):
    %2 = "arith.select"(%arg6, %arg7, %arg8) : (i1, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, f32, f32) -> f32, sym_name = "float_arith_select"}> ({
  ^bb0(%arg3: i1, %arg4: f32, %arg5: f32):
    %1 = "arith.select"(%arg3, %arg4, %arg5) : (i1, f32, f32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>, sym_name = "vector_float_arith_select"}> ({
  ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xf32>, %arg2: tensor<2xf32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (tensor<2xi1>, tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

