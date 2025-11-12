"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, i32) -> tensor<16xi32>, sym_name = "mod_and_select"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: i32):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %1 = "arith.remsi"(%arg0, %0) : (tensor<16xi32>, i32) -> tensor<16xi32>
      %2 = "arith.cmpi"(%1, %0, "eq") : (tensor<16xi32>, i32, i32) -> tensor<i1>
      %3 = "arith.constant"() <{value = dense<1> : tensor<16xi1>}> : () -> tensor<16xi1>
      %4 = "arith.select"(%2, %3, %1) : (tensor<i1>, tensor<16xi1>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()