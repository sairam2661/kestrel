"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_add_with_secret"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2) ({
    ^bb0(%arg2: index):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<8xi32>, index) -> i32
      %5 = "tensor.extract"(%arg1, %arg2) : (tensor<8xi32>, index) -> i32
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "tensor.insert"(%6, %arg0, %arg2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%7) : (tensor<8xi32>) -> ()
    }) : (index, index, index, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%3) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()