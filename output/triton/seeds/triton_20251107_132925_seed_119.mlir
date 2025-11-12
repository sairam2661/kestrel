"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<3> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "tt.expand_dims"(%3) <{axis = 1 : i64}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %5 = "tt.reduce"(%4) <{operation = "max", reduction_type = "i32"}> : (tensor<128x1xi32>) -> tensor<128xi32>
    "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()