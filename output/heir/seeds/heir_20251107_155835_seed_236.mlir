"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor_ext.assign_layout"(%arg0) <{layout = "offset:0,strides:[1,4]"}> : (tensor<4xi32>) -> tensor<4xi32>
    %4 = "tensor.extract"(%3, %0) : (tensor<4xi32>, index) -> i32
    %5 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%4, %5, "eq") : (i32, i32) -> i1
    %7 = "arith.select"(%6, %5, %4) : (i1, i32, i32) -> i32
    %8 = "tensor_ext.insert"(%7, %3, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "scf.for"(%arg1, %0, %1) <{step = 1 : index}> ({
    ^bb1(%iv: index, %iv0: tensor<4xi32>):
      %10 = "tensor.extract"(%iv0, %iv) : (tensor<4xi32>, index) -> i32
      %11 = "arith.addi"(%10, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %12 = "tensor_ext.insert"(%11, %iv0, %iv) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%iv, %12) : (index, tensor<4xi32>) -> ()
    }) : (index, tensor<4xi32>) -> (index, tensor<4xi32>)
    %13 = "secret.conceal"(%9#1) : (tensor<4xi32>) -> !secret_secrettensor4xi32
    "func.return"(%13) : (!secret_secrettensor4xi32) -> ()
  }) : () -> ()
}) : () -> ()