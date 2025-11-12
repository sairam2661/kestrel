"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i64), sym_name = "complex_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %cst1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cst2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %cst3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %cst4 = "arith.constant"() <{value = 100 : i32}> : () -> i32

    %0 = "tt.expand_dims"(%arg0, %cst1) <{keepdim = true}> : (i32, i32) -> tensor<1xi32>
    %1 = "tt.expand_dims"(%arg1, %cst2) <{keepdim = true}> : (i32, i32) -> tensor<1xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>

    %3 = "scf.if"(%cst3) ({
      %4 = "tt.reduce"(%2) ({
        ^bb0(%arg2: tensor<1xi32>, %arg3: i32):
          %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, i32) -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) : (tensor<1xi32>) -> i32
      "scf.yield"(%4) : (i32) -> i32
    }, {
      %6 = "tt.reduce"(%2) ({
        ^bb0(%arg2: tensor<1xi32>, %arg3: i32):
          %5 = "arith.subi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, tensor<1xi32>) -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) : (tensor<1xi32>) -> i32
      "scf.yield"(%6) : (i32) -> i32
    }) : (i32) -> i32

    %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %8 = "scf.if"(%7) ({
      %9 = "scf.for"(%cst1, %cst4, %cst1, %3) ({
        ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
          %10 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%10) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }, {
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> ()

    %11 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %12 = "arith.addi"(%8, %11) <{overflowFlags = #arith_overflownone}> : (i32, i64) -> i64
    "tt.return"(%8, %12) : (i32, i64) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()