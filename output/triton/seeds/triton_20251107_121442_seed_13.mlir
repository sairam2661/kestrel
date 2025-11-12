"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi1>, tensor<8xi32>) -> tensor<8xi64>, sym_name = "complex_select"}> ({
  ^bb0(%arg0: tensor<8xi1>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %2 = "arith.constant"() <{value = dense<3> : tensor<8xi32>}> : () -> tensor<8xi32>
    %3 = "arith.constant"() <{value = dense<4> : tensor<8xi32>}> : () -> tensor<8xi32>
    %4 = "arith.cmpi"(%arg1, %0) <{predicate = 0 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %5 = "arith.cmpi"(%arg1, %1) <{predicate = 2 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %6 = "arith.cmpi"(%arg1, %2) <{predicate = 4 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %7 = "arith.select"(%arg0, %5, %6) : (tensor<8xi1>, tensor<8xi1>, tensor<8xi1>) -> tensor<8xi1>
    %8 = "arith.select"(%7, %4, %3) : (tensor<8xi1>, tensor<8xi1>, tensor<8xi1>) -> tensor<8xi1>
    "tt.return"(%8) : (tensor<8xi1>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()