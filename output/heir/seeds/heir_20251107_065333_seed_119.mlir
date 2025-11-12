"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "vector_elementwise_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "vector_elementwise_sub"}> ({
  ^bb1(%arg2: tensor<4xi32>, %arg3: tensor<4xi32>):
    %1 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "vector_elementwise_mul"}> ({
  ^bb2(%arg4: tensor<4xi32>, %arg5: tensor<4xi32>):
    %2 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%2) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "identity_function"}> ({
  ^bb3(%arg6: tensor<4xi32>):
    "func.return"(%arg6) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "negate_function"}> ({
  ^bb4(%arg7: tensor<4xi32>):
    %3 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %4 = "arith.muli"(%arg7, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "increment_function"}> ({
  ^bb5(%arg8: tensor<4xi32>):
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.addi"(%arg8, %5) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "decrement_function"}> ({
  ^bb6(%arg9: tensor<4xi32>):
    %7 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %8 = "arith.addi"(%arg9, %7) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "double_function"}> ({
  ^bb7(%arg10: tensor<4xi32>):
    %9 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %10 = "arith.muli"(%arg10, %9) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "halve_function"}> ({
  ^bb8(%arg11: tensor<4xi32>):
    %11 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %12 = "arith.divisi"(%arg11, %11) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%12) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "square_function"}> ({
  ^bb9(%arg12: tensor<4xi32>):
    %13 = "arith.muli"(%arg12, %arg12) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%13) : (tensor<4xi32>) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "cube_function"}> ({
  ^bb10(%arg13: tensor<4xi32>):
    %14 = "arith.muli"(%arg13, %arg13) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %15 = "arith.muli"(%14, %arg13) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%15) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()