"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "tensor.zero"() : () -> tensor<4xi32>
    %3 = "scf.for"(%0, %1, %1, %2) ({
    ^bb0(%arg2: index, %arg3: tensor<4xi32>):
      %4 = "tensor.extract"(%arg0, %arg2) : (tensor<4xi32>, index) -> i32
      %5 = "tensor.extract"(%arg1, %arg2) : (tensor<4xi32>, index) -> i32
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_typed_overflow}> : (i32, i32) -> i32
      %7 = "tensor.insert"(%6, %arg3, %arg2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"(%7) : (tensor<4xi32>) -> ()
    }) {lower = 0 : i64, upper = 4 : i64} : (index, index, index, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()