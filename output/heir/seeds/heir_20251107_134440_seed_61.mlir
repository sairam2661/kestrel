"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>, sym_name = "tensor_rotation"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "func.return"(%3) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()