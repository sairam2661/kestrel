"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_PTR) -> !ttg_PTR, sym_name = "complex_scratch_alloc"}> ({
  ^bb0(%arg0: !ttg_PTR):
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 512 : i32}> : () -> i32
    %2 = "ttg.global_scratch_alloc"(%0, %1) : (i32, i32) -> !ttg_PTR
    %3 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflow_none}> : (!ttg_PTR, !ttg_PTR) -> !ttg_PTR
    %4 = "tt.reduce"(%3) : (!ttg_PTR) -> !ttg_PTR
    %5 = "tt.call"() <{callee = @helper_func}> : () -> !ttg_PTR
    %6 = "scf.if"(%arg0) ({
      %7 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }, {
      "scf.yield"(%1) : (i32) -> ()
    }) : (i32) -> i32
    %8 = "tt.expand_dims"(%4) : (!ttg_PTR) -> !ttg_PTR
    %9 = "tt.addptr"(%5, %8) : (!ttg_PTR, !ttg_PTR) -> !ttg_PTR
    "tt.return"(%9) : (!ttg_PTR) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "helper_func"}> ({
  ^bb1:
    %10 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()