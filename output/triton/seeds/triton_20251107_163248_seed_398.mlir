"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_computations"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.muli"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "scf.for"() <{upper_bound = 32 : index, lower_bound = 0 : index}> ({
        ^bb1(%iv: index):
          %5 = "arith.addi"(%iv, %iv) : (index, index) -> index
          %6 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
          "scf.yield"() : () -> ()
      }) : () -> ()
      %7 = "arith.select"(%0, %2, %3) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) : () -> ()