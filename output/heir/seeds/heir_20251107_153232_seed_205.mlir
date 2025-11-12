"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, !secret_SECRET) -> (tensor<4x4xi32>, !secret_SECRET), sym_name = "complex_function"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: !secret_SECRET):
    %0 = "arith.constant"() <{value = dense<10 : i32> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %1 = "arith.constant"() <{value = dense<20 : i32> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %2 = "arith.addi"(%arg0, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %3 = "arith.addi"(%2, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %4 = "secret.conceal"(%3) : (tensor<4x4xi32>) -> !secret_SECRET
    "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
      ^bb0(%iv: index):
        %5 = "arith.addi"(%iv, %iv) : (index, index) -> index
        %6 = "arith.constant"() <{value = 1 : index}> : () -> index
        %7 = "arith.addi"(%5, %6) : (index, index) -> index
        "scf.yield"() : () -> ()
    }) : () -> ()
    %8 = "tensor.extract"(%arg0, %c0_i32) : (tensor<4x4xi32>, i32) -> i32
    %9 = "comb.truth_table"(%8, %c1_i1) <{lookupTable = 6 : ui4}> : (i32, i1) -> i1
    "func.return"(%3, %arg1) : (tensor<4x4xi32>, !secret_SECRET) -> ()
  }) : () -> ()
}) : () -> ()