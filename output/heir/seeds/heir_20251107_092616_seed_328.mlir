"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>, sym_name = "tensor_rotate_add"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %4 = "tensor_ext.rotate"(%3, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
    %5 = "arith.addi"(%4, %arg0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %6 = "arith.addi"(%5, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "func.return"(%6) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()