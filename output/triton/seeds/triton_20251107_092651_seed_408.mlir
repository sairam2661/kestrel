"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_ops"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "tt.make_range"(%0, %1) : (i32, i64) -> vector<64xi64>
    %3 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<64xf64>}> : () -> tensor<64xf64>
    %4 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<64xf64>}> : () -> tensor<64xf64>
    %5 = "arith.addf"(%3, %4) <{fastmath = #arithfastmathnones}> : (tensor<64xf64>, tensor<64xf64>) -> tensor<64xf64>
    %6 = "tt.expand_dims"(%5, 1) : (tensor<64xf64>, i32) -> tensor<1x64xf64>
    %7 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg_SCRATCH
    %8 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 64 : index, step = 1 : index}> ({
    ^bb0(%arg0: index, %arg1: i32):
      %9 = "arith.muli"(%arg1, %arg0) : (i32, index) -> i32
      %10 = "scf.yield"(%9) : (i32) -> i32
    }) : (i32) -> i32
    %11 = "scf.if"(%8) ({
    ^bb0:
      %12 = "arith.cmpi"(%8, %0, "slt") : (i32, i32, index) -> i1
      "scf.yield"(%12) : (i1) -> i1
    }) {
    } :
    () -> i1
    "tt.return"(%8, %11) : (i32, i1) -> (i32, i1)
  }) : (i32, i64) -> (i32, i1)
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()