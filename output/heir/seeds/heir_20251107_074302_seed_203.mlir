"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, index) -> tensor<8xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tensor.insert"(%0, %arg0, %arg1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "tensor.insert"(%2, %1, %arg1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "scf.for"(%arg1, %4, %2) ({
    ^bb0(%arg2: index, %arg3: tensor<8xi32>):
      %6 = "tensor.extract"(%arg3, %arg2) : (tensor<8xi32>, index) -> i32
      %7 = "arith.addi"(%6, %0) <{overflowFlags = #arith_overflow_mode_signed}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %arg3, %arg2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"(%8) : (tensor<8xi32>) -> ()
    }) : (index, index, index, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%5) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()