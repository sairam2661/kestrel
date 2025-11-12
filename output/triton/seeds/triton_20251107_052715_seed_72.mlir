"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}, {tt.divisibility = 8 : i32}, {}], function_type = (i32, i32, i32) -> tensor<128xi32>, sym_name = "complex_kernel"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: i32):
      %6 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %7 = "arith.constant"() <{value = dense<3> : tensor<128xi32>}> : () -> tensor<128xi32>
      %8 = "arith.xori"(%4, %7) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32, "ttg.num-ctas" = 2 : i32} : () -> ()