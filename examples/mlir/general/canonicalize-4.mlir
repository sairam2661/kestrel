"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "arith.floordivsi_by_one"}> ({
  ^bb0(%arg1: i32):
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.floordivsi"(%arg1, %5) : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x5xi32>) -> tensor<4x5xi32>, sym_name = "tensor_arith.floordivsi_by_one"}> ({
  ^bb0(%arg0: tensor<4x5xi32>):
    %3 = "arith.constant"() <{value = dense<1> : tensor<4x5xi32>}> : () -> tensor<4x5xi32>
    %4 = "arith.floordivsi"(%arg0, %3) : (tensor<4x5xi32>, tensor<4x5xi32>) -> tensor<4x5xi32>
    "func.return"(%4) : (tensor<4x5xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i64, sym_name = "arith.floordivsi_by_one_overflow"}> ({
    %0 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %2 = "arith.floordivsi"(%1, %0) : (i64, i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

