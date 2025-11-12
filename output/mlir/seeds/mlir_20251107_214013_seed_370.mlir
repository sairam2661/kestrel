"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32, f32) -> (i32, f32), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2:2 = "scf.if"(%0) ({
    ^bb1(%arg4: i32):
      %3 = "arith.cmpi"("slt", %arg4, %1) : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }) : (i1) -> (i1)
    %4 = "arith.select"(%2#0, %arg2, %arg3) : (i1, f32, f32) -> f32
    %5 = "arith.constant"() <{value = 0.500000e+00 : f32}> : () -> f32
    %6 = "arith.mulf"(%4, %5) <{fastmath = #arith_fastmathattrs}> : (f32, f32) -> f32
    "func.return"(%0, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()