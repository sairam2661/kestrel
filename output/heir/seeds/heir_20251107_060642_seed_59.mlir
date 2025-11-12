"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi32>, tensor<4x8xi32>) -> tensor<4x8xi32>, sym_name = "tensor_permute_and_add"}> ({
  ^bb0(%arg0: tensor<4x8xi32>, %arg1: tensor<4x8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "scf.for"(%0, %2, %3, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<4x8xi32>):
      %5 = "scf.for"(%0, %1, %3, %arg3) ({
      ^bb0(%arg4: index, %arg5: tensor<4x8xi32>):
        %6 = "tensor.extract"(%arg1, %arg2, %arg4) : (tensor<4x8xi32>, index, index) -> i32
        %7 = "tensor.extract"(%arg0, %arg2, %arg4) : (tensor<4x8xi32>, index, index) -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %9 = "tensor.insert"(%8, %arg5, %arg2, %arg4) : (i32, tensor<4x8xi32>, index, index) -> tensor<4x8xi32>
        "scf.yield"(%9) : (tensor<4x8xi32>) -> ()
      }) : (index, index, index, tensor<4x8xi32>) -> tensor<4x8xi32>
      "scf.yield"(%5) : (tensor<4x8xi32>) -> ()
    }) : (index, index, index, tensor<4x8xi32>) -> tensor<4x8xi32>
    "func.return"(%4) : (tensor<4x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()