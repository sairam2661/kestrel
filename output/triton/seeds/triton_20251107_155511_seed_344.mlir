"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!ttgpuwarpsize, !ttgpuwarpsize, !ttgpuwarpsize) -> (!ttgpuwarpsize, !ttgpuwarpsize, !ttgpuwarpsize), sym_name = "complex_interact"}> ({
  ^bb0(%arg0: !ttgpuwarpsize, %arg1: !ttgpuwarpsize, %arg2: !ttgpuwarpsize):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (!ttgpuwarpsize, !ttgpuwarpsize) -> !ttgpuwarpsize
    %4 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (!ttgpuwarpsize, !ttgpuwarpsize) -> !ttgpuwarpsize
    %5 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (!ttgpuwarpsize, !ttgpuwarpsize) -> !ttgpuwarpsize
    %6 = "scf.if"(%arg1) ({
      %7 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (!ttgpuwarpsize, !ttgpuwarpsize) -> !ttgpuwarpsize
      "scf.yield"(%7) : (!ttgpuwarpsize) -> ()
    }, {
      %8 = "arith.subi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (!ttgpuwarpsize, !ttgpuwarpsize) -> !ttgpuwarpsize
      "scf.yield"(%8) : (!ttgpuwarpsize) -> ()
    }) : (!ttgpuwarpsize) -> (!ttgpuwarpsize)
    "tt.return"(%3, %5, %6) : (!ttgpuwarpsize, !ttgpuwarpsize, !ttgpuwarpsize) -> (!ttgpuwarpsize, !ttgpuwarpsize, !ttgpuwarpsize)
  }) : () -> ()
}) {"ttg.device" = "cuda:0", "ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32, "ttg.compute-capability" = 80 : i32} : () -> ()