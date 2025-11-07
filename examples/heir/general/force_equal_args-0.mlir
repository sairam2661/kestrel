"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>, sym_name = "relinearize_both_add_operands"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.muli"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %1 = "mgmt.relinearize"(%0) : (tensor<8xi16>) -> tensor<8xi16>
    %2 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    %3 = "mgmt.relinearize"(%2) : (tensor<8xi16>) -> tensor<8xi16>
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "tensor_ext.rotate"(%3, %4) : (tensor<8xi16>, index) -> tensor<8xi16>
    %6 = "arith.addi"(%1, %5) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "func.return"(%6) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()

