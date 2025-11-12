"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> i8, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "arith.addi"(%arg0, %arg1) <{fastmath = #arith_fastmath_attrs}> : (i8, i8) -> i8
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i8, i8) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.addi"(%arg0, %arg1) <{fastmath = #arith_fastmath_attrs}> : (i8, i8) -> i8
      "scf.yield"(%3) : (i8) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %arg1) <{fastmath = #arith_fastmath_attrs}> : (i8, i8) -> i8
      "scf.yield"(%4) : (i8) -> ()
    }) : (i1) -> i8
    %5 = "arith.muli"(%arg0, %arg1) <{fastmath = #arith_fastmath_attrs}> : (i8, i8) -> i8
    "func.return"(%5) : (i8) -> ()
  }) : () -> ()
}) : () -> ()