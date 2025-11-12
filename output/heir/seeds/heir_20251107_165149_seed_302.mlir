"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "tensor.insert"(%0, %arg0, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %2 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %3 = "tensor.insert"(%2, %arg1, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %5 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %6 = "tensor.insert"(%5, %4, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %7 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %8 = "tensor.insert"(%7, %6, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %9 = "arith.subi"(%8, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%9) : (tensor<4xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "nested_operations"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 5 : i8}> : () -> i8
    %1 = "tensor.insert"(%0, %arg0, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %2 = "arith.constant"() <{value = 6 : i8}> : () -> i8
    %3 = "tensor.insert"(%2, %1, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %4 = "scf.for"(%arg0, %0, %2) ({
    ^bb0(%iv: tensor<4xi8>, %arg0: tensor<4xi8>):
      %5 = "arith.addi"(%iv, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
      "scf.yield"(%5) : (tensor<4xi8>) -> ()
    }) : (tensor<4xi8>) -> (tensor<4xi8>)
    "func.return"(%4) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()