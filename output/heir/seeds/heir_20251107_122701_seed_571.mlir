"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>, sym_name = "complex_rotation_and_add"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 16 : index}> : () -> index
    %5 = "scf.for"(%0, %2, %4) ({
    ^bb0(%arg2: index, %arg3: tensor<32xi8>):
      %6 = "tensor_ext.rotate"(%arg0, %arg2) : (tensor<32xi8>, index) -> tensor<32xi8>
      %7 = "tensor_ext.rotate"(%arg1, %arg2) : (tensor<32xi8>, index) -> tensor<32xi8>
      %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow} > : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
      "scf.yield"(%8) : (tensor<32xi8>) -> ()
    }) : (index, tensor<32xi8>) -> tensor<32xi8>
    %9 = "tensor_ext.rotate"(%5, %4) : (tensor<32xi8>, index) -> tensor<32xi8>
    %10 = "arith.addi"(%5, %9) <{overflowFlags = #arith_overflow} > : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    %11 = "scf.for"(%0, %2, %1) ({
    ^bb0(%arg2: index, %arg3: tensor<32xi8>):
      %12 = "tensor_ext.rotate"(%arg0, %arg2) : (tensor<32xi8>, index) -> tensor<32xi8>
      %13 = "tensor_ext.rotate"(%arg1, %arg2) : (tensor<32xi8>, index) -> tensor<32xi8>
      %14 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflow} > : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
      "scf.yield"(%14) : (tensor<32xi8>) -> ()
    }) : (index, tensor<32xi8>) -> tensor<32xi8>
    %15 = "tensor_ext.rotate"(%11, %1) : (tensor<32xi8>, index) -> tensor<32xi8>
    %16 = "arith.addi"(%11, %15) <{overflowFlags = #arith_overflow} > : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
    "func.return"(%16) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()