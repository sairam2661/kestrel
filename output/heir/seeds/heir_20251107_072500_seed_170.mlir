"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<32xi8>) -> tensor<32xi8>, sym_name = "rotate_and_add_tensors"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<32xi8>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 7 : index}> : () -> index
    %3 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi16>, index) -> tensor<8xi16>
    %4 = "tensor_ext.rotate"(%arg0, %1) : (tensor<8xi16>, index) -> tensor<8xi16>
    %5 = "tensor_ext.rotate"(%arg0, %2) : (tensor<8xi16>, index) -> tensor<8xi16>
    %6 = "arith.extui"(%3) : (tensor<8xi16>) -> tensor<8xi32>
    %7 = "arith.extui"(%4) : (tensor<8xi16>) -> tensor<8xi32>
    %8 = "arith.extui"(%5) : (tensor<8xi16>) -> tensor<8xi32>
    %9 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %10 = "arith.addi"(%9, %8) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %11 = "arith.trunci"(%10) : (tensor<8xi32>) -> tensor<8xi8>
    %12 = "arith.addi"(%arg1, %11) <{overflowFlags = #arith_overflownone}> : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    "func.return"(%12) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()