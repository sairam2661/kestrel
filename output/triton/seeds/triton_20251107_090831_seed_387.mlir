"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32, tt.pointer_range = 32 : i32}], function_type = (!tti32) -> (), sym_name = "unusual_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: !tti32):
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%arg0, %2, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg0, %2) : (i1, i32, i32) -> i32
    %5 = "arith.remsi"(%4, %1) : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()