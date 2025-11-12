"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
      %0 = "arith.constant"() <{value = dense<4> : tensor<8xi32>}> : () -> tensor<8xi32>
      %1 = "arith.xori"(%arg0, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %2 = "arith.addi"(%arg1, %1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %3 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
      %4 = "arith.select"(%3, %2, %arg0) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %5 = "arith.remsi"(%4, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %6 = "arith.subi"(%arg1, %5) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "tt.return"(%6) : (tensor<8xi32>) -> tensor<8xi32>
  }) : () -> ()
}) : () -> ()