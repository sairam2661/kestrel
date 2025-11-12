"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<32xi8>, index) -> i8
    %2 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow}> : (i8, i8) -> i8
    %4 = "tensor.insert"(%3, %arg0, %0) : (i8, tensor<32xi8>, index) -> tensor<32xi8>
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "tensor.extract"(%arg1, %5) : (tensor<32xi8>, index) -> i8
    %7 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %8 = "arith.subi"(%6, %7) <{overflowFlags = #arith_overflow}> : (i8, i8) -> i8
    %9 = "tensor.insert"(%8, %arg1, %5) : (i8, tensor<32xi8>, index) -> tensor<32xi8>
    %10 = "arith.constant"() <{value = 0 : index}> : () -> index
    %11 = "scf.for"(%10, %3, %2, %8) ({
    ^bb0(%arg2: index, %arg3: i8):
      %12 = "tensor.extract"(%arg4, %arg2) : (tensor<32xi8>, index) -> i8
      %13 = "arith.addi"(%arg3, %12) <{overflowFlags = #arith_overflow}> : (i8, i8) -> i8
      "scf.yield"(%13) : (i8) -> ()
    }) : (index, index, index, i8) -> i8
    "func.return"(%9) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()