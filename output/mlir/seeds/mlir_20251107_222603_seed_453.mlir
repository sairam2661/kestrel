"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "fuzz_complex_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flag_attr}> : (i32, i32) -> i32
      %1 = "arith.cmpi"("sgt", %0, %arg0) : (i32, i32) -> i1
      scf.if %1, "bb1" : (i1) -> ()  block0  .block0:
        !bb0_0_1024_0  ^bb1(%arg2: i32):
          %2 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith_overflow_flag_attr}> : (i32, i32) -> i32
          "func.return"(%2, %arg2) : (i32, i32) -> ()
        block  .block1:
          !bb0_0_1024_1  ^bb2(%arg3: i32):
          %3 = "arith.subi"(%arg3, %arg0) <{overflowFlags = #arith_overflow_flag_attr}> : (i32, i32) -> i32
          "func.return"(%3, %arg3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()