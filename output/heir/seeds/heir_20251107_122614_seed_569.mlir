"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_scf_for_with_tensor_rotations"}> ({
  ^bb0(%arg0: tensor<64xi32>):
    %0 = "arith.constant"() <{value = 32 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "scf.for"(%0, %2, %1, %arg0) ({
    ^bb0(%arg1: index, %arg2: tensor<64xi32>):
      %5 = "tensor_ext.rotate"(%arg2, %3) : (tensor<64xi32>, index) -> tensor<64xi32>
      %6 = "arith.addi"(%arg2, %5) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%6) : (tensor<64xi32>) -> ()
    }) : (index, tensor<64xi32>) -> tensor<64xi32>
    "func.return"(%4) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()