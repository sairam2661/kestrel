"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> i64, sym_name = "complex_op_combination"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow}> : (i8, i8) -> i8
    %2 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "arith.subi"(%arg1, %2) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = true}> : () -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.muli"(%arg1, %2) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i1) -> i32
    %8 = "arith.andi"(%1, %3) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()