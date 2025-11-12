"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %1 = "arith.subi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.muli"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.divsi"(%2, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.remsi"(%2, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %6 = "arith.cmpi"(%5, %arg0) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %7 = "arith.select"(%6, %3, %4) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()