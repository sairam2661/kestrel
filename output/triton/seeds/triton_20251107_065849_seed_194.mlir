"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<32xi32>, sym_name = "complex_kernel", sym_visibility = "private"}> ({
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflowFlagsAttr}>({}) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
    %4 = "arith.subi"(%2, %3) <{overflowFlags = #arith_overflowFlagsAttr}>({}) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.xori"(%4, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "scf.for"(%0) <{lower_bound = 0 : i32, upper_bound = 16 : i32, step = 1 : i32}> ({
    ^bb0(%arg0: tensor<32xi32>):
      %7 = "arith.addi"(%arg0, %5) <{overflowFlags = #arith_overflowFlagsAttr}>({}) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%7) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> (tensor<32xi32>)
    %8 = "arith.select"(%0, %6, %4) <{predicate = 0 : i64}> : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%8) : (tensor<32xi32>) -> ()
  }) : () -> tensor<32xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()