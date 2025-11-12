"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32, tt.pointer_range = 64 : i32}], function_type = (!tt_ptr, !tt_ptr) -> (), sym_name = "complex_kernel"}> ({
    ^bb0(%arg0: !tt_ptr, %arg1: !tt_ptr):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c64_i32 = "arith.constant"() <{value = 64 : i32}> : () -> i32
      %0 = "tt.make_range"(%c0_i32, %c64_i32, %c1_i32) : (i32, i32, i32) -> !tti
      %1 = "tt.addptr"(%arg0, %0) : (!tt_ptr, !tti) -> !tt_ptr

      %2 = "tt.make_range"(%c0_i32, %c64_i32, %c1_i32) : (i32, i32, i32) -> !tti
      %3 = "tt.addptr"(%arg1, %2) : (!tt_ptr, !tti) -> !tt_ptr

      %4 = "scf.if"(%c1_i32 : i32) ({
        ^bb0:
          %5 = "tt.reduce"(%1, %3) <{operation = "add", size = 64 : i32}> : (!tt_ptr, !tt_ptr) -> !tt_ptr
          "tt.return"(%5) : (!tt_ptr) -> ()
      }) {
        "tt.return"="#" : () -> ()
      } : i32 -> ()

      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 16 : i32} : () -> ()