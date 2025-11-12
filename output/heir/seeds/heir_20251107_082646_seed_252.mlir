"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_add_and_rotate"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode} > : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %2 = "tensor_ext.rotate"(%1, %0) : (tensor<10xi32>, index) -> tensor<10xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflow_mode} > : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "arith.select"(%arg0, %arg1, %3) : (tensor<10xi32>, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%4) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()