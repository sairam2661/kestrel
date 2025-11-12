"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt_ptr) -> (), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: !tt_ptr):
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<4x4xf32>}> : () -> tensor<4x4xf32>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<8x2xf32>}> : () -> tensor<8x2xf32>
    %2 = "arith.constant"() <{value = dense<3.000000e+00> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
    %3 = "scf.for"(%arg0, %0, %1, %2) ({
    ^bb0(%arg1: tensor<4x4xf32>, %arg2: tensor<8x2xf32>, %arg3: tensor<16x16xf32>):
      %4 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith_fastmath}> : (tensor<4x4xf32>, tensor<8x2xf32>) -> tensor<4x4xf32>
      %5 = "arith.addf"(%arg3, %4) <{fastmath = #arith_fastmath}> : (tensor<16x16xf32>, tensor<4x4xf32>) -> tensor<16x16xf32>
      "scf.yield"(%5) : (tensor<16x16xf32>) -> ()
    }) : (tensor<4x4xf32>, tensor<8x2xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
    %6 = "scf.if"(%3) ({
      %7 = "arith.constant"() <{value = dense<0> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
      "scf.yield"(%7) : (tensor<16x16xf32>) -> ()
    }, {
      %8 = "arith.constant"() <{value = dense<1> : tensor<16x16xf32>}> : () -> tensor<16x16xf32>
      "scf.yield"(%8) : (tensor<16x16xf32>) -> ()
    }) : (tensor<16x16xf32>) -> tensor<16x16xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()