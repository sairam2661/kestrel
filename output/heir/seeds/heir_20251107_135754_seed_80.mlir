"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "mixed_dialect_operations"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<10xi32>, %arg3: tensor<10xi32>):
      %2 = "scf.for"(%c0 : index, %10 : index, %0 : index, %arg2 : tensor<10xi32>) ({
      ^bb0(%arg4: index, %arg5: tensor<10xi32>):
        %3 = "tensor.extract"(%arg5, %arg4) : (tensor<10xi32>, index) -> i32
        %4 = "arith.addi"(%3, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %5 = "tensor.insert"(%4, %arg2, %arg4) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
        "scf.yield"(%5) : (tensor<10xi32>) -> ()
      }) : (index, index, index, tensor<10xi32>) -> tensor<10xi32>
      "secret.yield"(%2) : (tensor<10xi32>) -> ()
    }) : (!secret_secret_tensor_10xi32, !secret_secret_tensor_10xi32) -> !secret_secret_tensor_10xi32
    %6 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg7: tensor<10xi32>, %arg8: tensor<10xi32>):
      %9 = "scf.for"(%c0 : index, %10 : index, %0 : index, %arg7 : tensor<10xi32>) ({
      ^bb0(%arg9: index, %arg10: tensor<10xi32>):
        %11 = "tensor.extract"(%arg10, %arg9) : (tensor<10xi32>, index) -> i32
        %12 = "arith.addi"(%11, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %13 = "tensor.insert"(%12, %arg8, %arg9) : (i32, tensor<10xi32>, index) -> tensor<10xi32>
        "scf.yield"(%13) : (tensor<10xi32>) -> ()
      }) : (index, index, index, tensor<10xi32>) -> tensor<10xi32>
      "secret.yield"(%9) : (tensor<10xi32>) -> ()
    }) : (!secret_secret_tensor_10xi32, !secret_secret_tensor_10xi32) -> !secret_secret_tensor_10xi32
    "func.return"(%6) : (!secret_secret_tensor_10xi32) -> ()
  }) : () -> ()
}) : () -> ()