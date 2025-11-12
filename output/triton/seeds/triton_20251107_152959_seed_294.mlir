"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "fuzz_div_and_select"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.divsi"(%arg0, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %3 = "arith.select"(%1, %arg1, %2) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.remsi"(%arg0, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.cmpi"(%4, %2, "eq") : (tensor<64xi32>, tensor<64xi32>, i32) -> tensor<64xi1>
    %6 = "arith.select"(%5, %3, %arg0) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) : () -> ()