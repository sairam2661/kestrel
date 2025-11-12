"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %1 = "tosa.const"() <{values = dense<42> : tensor<i32>}> : () -> tensor<i32>
      %2 = "arith.addi"(%0, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "scf.for"(%arg0) <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32}> ({
        ^b1(%iv: i32):
          %3 = "arith.addi"(%iv, %arg0) : (i32, tensor<i32>) -> tensor<i32>
          "scf.yield"() : () -> ()
      }) : (tensor<i32>) -> (tensor<i32>)
      "func.return"(%2) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()