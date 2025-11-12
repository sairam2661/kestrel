"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr,i64) -> (i32,i32), sym_name = "stress_test", sym_visibility = "private"}> ({
    ^bb0(%arg0: !tt_ptr, %arg1: i64):
      %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2048 : i32}> : () -> i32
      %2 = "arith.subi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = -1 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %5 = "tt.addptr"(%arg0, %4) : (!tt_ptr, i64) -> !tt_ptr
      %6 = "tt.expand_dims"(%2, %3) : (i32, i32) -> tensor<1xi32>
      %7 = "scf.for"(%arg1) <{upper_bound = 512 : i64}> ({
        ^bb1(%iv: i64):
          %8 = "arith.addi"(%iv, %arg1) : (i64, i64) -> i64
          %9 = "tt.make_range"() <{start = 0 : i32, end = 64 : i32}> : () -> tensor<64xi32>
          %10 = "tt.reduce"(%9) <{operation = "tt.addi"}> ({
            ^bb2(%acc: i32):
              %11 = "arith.addi"(%acc, %8) : (i32, i64) -> i32
              scf.yield %11 : i32
          }) : (tensor<64xi32>) -> i32
          scf.yield : () -> ()
      }) : (i64) -> ()
      %12 = "scf.if"(%3) ({
        ^bb3:
          %13 = "arith.addi"(%2, %3) : (i32, i32) -> i32
          scf.yield %13 : i32
      }) : (i32) -> i32
      "tt.return"(%12, %3) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()