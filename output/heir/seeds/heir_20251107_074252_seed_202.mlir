"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x4xi32>, index) -> tensor<16x4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<16x4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "scf.if"(%arg1) ({
    ^bb0:
      %3 = "tensor.insert"(%1, %arg0, %0) : (i32, tensor<16x4xi32>, index) -> tensor<16x4xi32>
      "scf.yield"(%3) : (tensor<16x4xi32>) -> ()
    }) {
    } : (index) -> tensor<16x4xi32>
    %4 = "tensor.extract"(%2, %0) : (tensor<16x4xi32>, index) -> i32
    %5 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
    %6 = "tensor.insert"(%5, %2, %0) : (i32, tensor<16x4xi32>, index) -> tensor<16x4xi32>
    "func.return"(%6) : (tensor<16x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()