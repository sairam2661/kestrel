"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}], function_type = (!tt_ptr)into tensor<128xi32>, sym_name = "complex_kernel", sym_visibility = "public"}> ({
    ^bb0(%arg0: !tt_ptr):
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
      %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.divsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "arith.remsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %5 = "arith.select"(%3, %4, %1) : (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : (!tt_ptr) -> tensor<128xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()