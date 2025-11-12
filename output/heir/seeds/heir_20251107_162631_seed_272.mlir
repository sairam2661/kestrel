"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x64xi32>, i32, !secret_secret) -> tensor<1x64xi32>, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: tensor<1x64xi32>, %arg1: i32, %arg2: !secret_secret):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "scf.for"(%arg0, %arg1, %1) <{lower_bound = 0 : index, upper_bound = 1 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %arg3: tensor<1x64xi32>, %arg4: i32):
      %3 = "tensor.extract"(%arg3, %iv) : (tensor<1x64xi32>, index) -> i32
      %4 = "arith.addi"(%3, %arg4) : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %0, "slt") : (i32, i32) -> i1
      %6 = "arith.select"(%5, %4, %0) : (i1, i32, i32) -> i32
      %7 = "tensor.insert"(%6, %arg3, %iv) : (i32, tensor<1x64xi32>, index) -> tensor<1x64xi32>
      "scf.yield"(%7, %arg4) : (tensor<1x64xi32>, i32) -> ()
    }) : (tensor<1x64xi32>, i32) -> (tensor<1x64xi32>, i32)
    %8 = "secret.conceal"(%2#0) : (tensor<1x64xi32>) -> !secret_secret
    "func.return"(%8) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()