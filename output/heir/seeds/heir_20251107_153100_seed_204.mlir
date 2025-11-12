"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<16xi8>, index) -> tensor<16xi8>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<16xi8>, index) -> tensor<16xi8>
    %4 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %5 = "arith.muli"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %6 = "arith.subi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %7 = "scf.for"(%0, %1, %1, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<16xi8>):
      %8 = "tensor.extract"(%arg3, %arg2) : (tensor<16xi8>, index) -> i8
      %9 = "arith.constant"() <{value = 5 : i8}> : () -> i8
      %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      %11 = "tensor.insert"(%10, %3, %arg2) : (i8, tensor<16xi8>, index) -> tensor<16xi8>
      "scf.yield"(%11) : (tensor<16xi8>) -> ()
    }) : (index, index, index, tensor<16xi8>) -> tensor<16xi8>
    "func.return"(%7) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()