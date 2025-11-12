"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr16tensor64x64xf16, i32) -> (!tt_ptr16tensor64x64xf16, i32), sym_name = "complex_op"}> ({
  ^bb0(%arg0: !tt_ptr16tensor64x64xf16, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg1, %0, "slt") : (i32, i32) -> i1
    "scf.if"(%2) ({
      ^bb1:
        %3 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) {
      "scf.yield" = "scf.yield" : () -> ()
    }
    : () -> ()
    %4 = "scf.yield"(%arg0, %arg1) : (!tt_ptr16tensor64x64xf16, i32) -> (!tt_ptr16tensor64x64xf16, i32)
  }) : (!tt_ptr16tensor64x64xf16, i32) -> (!tt_ptr16tensor64x64xf16, i32)
}) : () -> ()