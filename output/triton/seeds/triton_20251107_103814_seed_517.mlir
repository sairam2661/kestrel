"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_combinations"}> ({
    ^bb0(%arg0: tensor<8xi32>):
      %1 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
      %2 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
      %3 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith_overflow_pinfinity}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %4 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_pinfinity}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %6 = "arith.constant"() <{value = dense<3> : tensor<8xi32>}> : () -> tensor<8xi32>
      %7 = "arith.cmpi"(%5, %6) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
      %8 = "arith.constant"() <{value = dense<0> : tensor<8xi32>}> : () -> tensor<8xi32>
      %9 = "arith.select"(%7, %5, %8) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "tt.return"(%9) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 2 : i32} : () -> ()