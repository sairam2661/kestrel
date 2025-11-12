"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi8>, tensor<128xi32>, tensor<128xi8>) -> tensor<128xi1>, sym_name = "fuzz_unusual_combinations"}> ({
  ^bb0(%arg0: tensor<128xi8>, %arg1: tensor<128xi32>, %arg2: tensor<128xi8>):
    %0 = "arith.constant"() <{value = dense<128> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.cmpi"(%arg1, %0, "slt") <{overflowFlags = #arith_overflow_reported}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %2 = "scf.if"(%1) ({
      %3 = "arith.cmpi"(%arg0, %arg2, "sle") <{overflowFlags = #arith_overflow_reported}> : (tensor<128xi8>, tensor<128xi8>) -> tensor<128xi1>
      "scf.yield"(%3) : (tensor<128xi1>) -> ()
    }, {
      %4 = "arith.constant"() <{value = dense<0> : tensor<128xi1>}> : () -> tensor<128xi1>
      "scf.yield"(%4) : (tensor<128xi1>) -> ()
    }) : (tensor<128xi1>) -> (tensor<128xi1>)
    "tt.return"(%2) : (tensor<128xi1>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()