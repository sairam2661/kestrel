"builtin.module"() ({
  "tt.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_info}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflow_info}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %0) <{overflowFlags = #arith_overflow_info}> : (i32, i32) -> i32
    %5 = "arith.subi"(%arg0, %2) <{overflowFlags = #arith_overflow_info}> : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "arith.cmpi"(%arg0, %6, "slt") <{predicate = "slt"}> : (i32, i32, i1) -> i1
    %8 = "arith.select"(%7, %arg0, %5) : (i1, i32, i32) -> i32
    %9 = "scf.if"(%7) ({
      %10 = "arith.addi"(%arg1, %1) <{fastmath = #arith_fastmath_info}> : (f32, f32) -> f32
      "scf.yield"(%10) : (f32) -> ()
    }, {
      %11 = "arith.subi"(%arg1, %1) <{fastmath = #arith_fastmath_info}> : (f32, f32) -> f32
      "scf.yield"(%11) : (f32) -> ()
    }) : (i1) -> f32
    "tt.return"(%8, %9) : (i32, f32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()