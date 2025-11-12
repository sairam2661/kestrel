"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.muli"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.subi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.divi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.mini"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.maxi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %6 = "arith.remsi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %7 = "arith.remui"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %8 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %9 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %10 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %11 = "arith.select"(%8, %0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %12 = "arith.select"(%9, %2, %3) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %13 = "arith.select"(%10, %4, %5) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%13) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
}) : () -> ()