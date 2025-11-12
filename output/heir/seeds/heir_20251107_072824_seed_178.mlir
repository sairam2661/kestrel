"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_add_and_select"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.constant"() <{value = dense<2 : i32> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.cmpi"(%arg0, %arg1, "gt") : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %4 = "arith.select"(%3, %2, %1) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()