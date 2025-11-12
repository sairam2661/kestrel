"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor16xi32, !secret_secret_tensor16xi32) -> !secret_secret_tensor16xi32, sym_name = "complex_secret_tensor_rotation_and_add"}> ({
  ^bb0(%arg0: !secret_secret_tensor16xi32, %arg1: !secret_secret_tensor16xi32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<16xi32>, index) -> tensor<16xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<16xi32>, index) -> tensor<16xi32>
    %4 = "secret.generic"(%2, %3) ({
    ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
      %5 = "scf.for"(%0, %1, %0, %0) ({
      ^bb0(%arg4: index, %arg5: tensor<16xi32>):
        %6 = "tensor.extract"(%arg2, %arg4) : (tensor<16xi32>, index) -> i32
        %7 = "tensor.extract"(%arg3, %arg4) : (tensor<16xi32>, index) -> i32
        %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %9 = "tensor.insert"(%8, %arg5, %arg4) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
        "scf.yield"(%9) : (tensor<16xi32>) -> ()
      }) {lower = 0 : i64, upper = 16 : i64} : (index, index, index, tensor<16xi32>) -> tensor<16xi32>
      "secret.yield"(%5) : (tensor<16xi32>) -> ()
    }) : (!secret_secret_tensor16xi32, !secret_secret_tensor16xi32) -> !secret_secret_tensor16xi32
    "func.return"(%4) : (!secret_secret_tensor16xi32) -> ()
  }) : () -> ()
}) : () -> ()