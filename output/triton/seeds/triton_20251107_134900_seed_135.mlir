"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_op"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %1 = "arith.muli"(%0, %arg2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %3 = "arith.divsi"(%1, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %5 = "arith.cmpi"(%3, %4) <{predicate = 3 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      %6 = "arith.select"(%5, %3, %arg2) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %7 = "arith.xori"(%6, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %8 = "arith.subi"(%7, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %9 = "arith.remsi"(%8, %arg2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%9) : (tensor<64xi32>) -> ()
  }) : () -> (tensor<64xi32>)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()