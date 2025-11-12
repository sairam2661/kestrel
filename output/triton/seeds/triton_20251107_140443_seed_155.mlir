"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_op_sequence"}> ({
    %0 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %5 = "scf.if"(%4) ({
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) {
      "scf.yield" = #scf_yield
    } : (i32) -> i32
    %7 = "arith.muli"(%0, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tt.expand_dims"(%7) <{axis = 0 : i64}> : (i32) -> tensor<1x128xi32>
    %9 = "arith.constant"() <{value = dense<3> : tensor<1x128xi32>}> : () -> tensor<1x128xi32>
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (tensor<1x128xi32>, tensor<1x128xi32>) -> tensor<1x128xi32>
    "tt.return"(%10) : (tensor<1x128xi32>) -> ()
  }) : (i32) -> (tensor<1x128xi32>)
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()