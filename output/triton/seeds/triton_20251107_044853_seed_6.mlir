"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_op_chain"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.remsi"(%3, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "arith.cmpi"(%4, %arg0) <{predicate = 1 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<1xi1>
    %6 = "arith.xori"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<1xi1>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 8 : i32} : () -> ()