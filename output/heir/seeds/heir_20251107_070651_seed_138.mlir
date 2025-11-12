"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_rotate"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %const0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %const1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %rotated0 = "tensor_ext.rotate"(%arg0, %const0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %rotated1 = "tensor_ext.rotate"(%arg1, %const1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %added = "arith.addi"(%rotated0, %rotated1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%added) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()