"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_select"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<20> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%arg0, %0) <{predicate = 5 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "arith.xori"(%arg1, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
    %5 = "arith.select"(%2, %arg0, %4) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.remsi"(%5, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 16 : i32} : () -> ()