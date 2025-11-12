"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, index) -> tensor<4xi16>, sym_name = "rotate_and_sum"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi16>, index) -> tensor<4xi16>
    %4 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi16>, index) -> tensor<4xi16>
    %5 = "tensor_ext.rotate"(%arg0, %2) : (tensor<4xi16>, index) -> tensor<4xi16>
    %6 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %7 = "arith.addi"(%6, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %8 = "arith.addi"(%7, %5) <{overflowFlags = #arith_overflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    "func.return"(%8) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()