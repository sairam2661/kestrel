"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_operation_chain"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflowFlags}>({
        "inbounds" 	("inbounds" 	)
      : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.remsi"(%2, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.cmpi"(%3, %1) {"predicate" = "eq"} : (tensor<16xi32>, tensor<16xi32>) -> tensor<1xi1>
      %5 = "arith.constant"() <{value = dense<1> : tensor<1xi1>}> : () -> tensor<1xi1>
      %6 = "arith.select"(%4, %3, %5) : (tensor<1xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()}){
"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()