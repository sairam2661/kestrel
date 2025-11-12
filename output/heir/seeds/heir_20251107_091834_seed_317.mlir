"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>, sym_name = "tensor_add_with_rotation"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) <{axis = 0 : index, steps = 1 : index}> : (tensor<8xi16>, index) -> tensor<8xi16>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "func.return"(%2) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()