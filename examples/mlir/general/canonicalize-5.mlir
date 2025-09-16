"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "arith.ceildivsi_by_one"}> ({
  ^bb0(%arg1: i32):
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.ceildivsi"(%arg1, %2) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x5xi32>) -> tensor<4x5xi32>, sym_name = "tensor_arith.ceildivsi_by_one"}> ({
  ^bb0(%arg0: tensor<4x5xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4x5xi32>}> : () -> tensor<4x5xi32>
    %1 = "arith.ceildivsi"(%arg0, %0) : (tensor<4x5xi32>, tensor<4x5xi32>) -> tensor<4x5xi32>
    "func.return"(%1) : (tensor<4x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

