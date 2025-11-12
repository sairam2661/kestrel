"builtin.module"() ({
  "tt.func"() <{function_type = (!tti32, !tti32) -> !tti32, sym_name = "cross_dialect_op", sym_visibility = "public"}> ({
    %0 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.select"(%2, %0, %1) : (tensor<10xi32>, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "tt.expand_dims"(%3, 0) <{new_sizes = [10, 1]}> : (tensor<10xi32>) -> tensor<10x1xi32>
    %5 = "arith.subi"(%4, %2) <{overflowFlags = #arith_overflownone}> : (tensor<10x1xi32>, tensor<10xi32>) -> tensor<10x1xi32>
    "tt.return"(%5) : (tensor<10x1xi32>) -> !tti32
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()