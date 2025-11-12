"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, !ttptr) -> (), sym_name = "fuzz_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: !ttptr, %arg1: !ttptr):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %3 = "arith.constant"() <{value = dense<3> : tensor<64xi32>}> : () -> tensor<64xi32>
    %4 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb1(%arg2: i32, %arg3: i32):
      %5 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
      "tt.reduce.return"(%5) : (i32) -> ()
    }) : (tensor<64xi32>) -> i32
    %6 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %7 = "arith.subi"(%4, %6) : (i32, i32) -> i32
    %8 = "arith.remsi"(%7, %6) : (i32, i32) -> i32
    %9 = "arith.select"(%8, %7, %6) : (i32, i32, i32) -> i32
    "tt.call"(%arg0, %arg1, %9) : (!ttptr, !ttptr, i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()