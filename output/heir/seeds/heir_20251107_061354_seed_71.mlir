"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<2xi32>) -> tensor<2xi32>, sym_name = "rotate_test"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "tensor.extract"(%arg0, %c0_i32) : (tensor<2xi32>, i32) -> i32
    %1 = "tensor.extract"(%arg0, %c1_i32) : (tensor<2xi32>, i32) -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.addi"(%0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%3, %arg0, %c1_i32) : (i32, tensor<2xi32>, i32) -> tensor<2xi32>
    %6 = "tensor.insert"(%4, %5, %c0_i32) : (i32, tensor<2xi32>, i32) -> tensor<2xi32>
    "func.return"(%6) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()