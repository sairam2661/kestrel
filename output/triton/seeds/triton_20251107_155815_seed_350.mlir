"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_reduction"}> ({
    ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %1 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
      %2 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
      %3 = "arith.xori"(%1, %2) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %4 = "tt.reduce"() <{dimensions = [0 : i32], operation = "add"}> ({
        ^bb1(%arg2: tensor<8xi32>):
          %5 = "arith.muli"(%arg2, %3) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
          "scf.yield"(%5) : (tensor<8xi32>) -> ()
      }) : (tensor<8xi32>) -> tensor<1xi32>
      %6 = "arith.remsi"(%4, %2) : (tensor<1xi32>, tensor<8xi32>) -> tensor<1xi32>
      "tt.return"(%6) : (tensor<1xi32>) -> ()
  }) : (tensor<8xi32>, tensor<8xi32>) -> tensor<1xi32>
}) : () -> ()