"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "divi_signed_by_one"}> ({
  ^bb0(%arg3: i32):
    %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "arith.divsi"(%arg3, %6) : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "divi_unsigned_by_one"}> ({
  ^bb0(%arg2: i32):
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.divui"(%arg2, %4) : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x5xi32>) -> tensor<4x5xi32>, sym_name = "tensor_divi_signed_by_one"}> ({
  ^bb0(%arg1: tensor<4x5xi32>):
    %2 = "arith.constant"() <{value = dense<1> : tensor<4x5xi32>}> : () -> tensor<4x5xi32>
    %3 = "arith.divsi"(%arg1, %2) : (tensor<4x5xi32>, tensor<4x5xi32>) -> tensor<4x5xi32>
    "func.return"(%3) : (tensor<4x5xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x5xi32>) -> tensor<4x5xi32>, sym_name = "tensor_divi_unsigned_by_one"}> ({
  ^bb0(%arg0: tensor<4x5xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4x5xi32>}> : () -> tensor<4x5xi32>
    %1 = "arith.divui"(%arg0, %0) : (tensor<4x5xi32>, tensor<4x5xi32>) -> tensor<4x5xi32>
    "func.return"(%1) : (tensor<4x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

