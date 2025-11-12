"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_arithmetic_kernel", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %1 = "arith.muli"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %2 = "arith.remsi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %3 = "arith.cmpi"(%arg0, %arg1, "gt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %4 = "arith.xori"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %5 = "arith.subi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %6 = "arith.select"(%3, %0, %5) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %7 = "arith.addi"(%6, %2) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "tt.return"(%7) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()