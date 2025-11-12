"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}], function_type = (i8, i8, i1) -> i8, sym_name = "custom_if_else"}> ({
  ^bb0(%arg0: i8, %arg1: i8, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
      "scf.yield"(%1) : (i8) -> ()
    }, {
      %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
      "scf.yield"(%2) : (i8) -> ()
    }) : (i1) -> i8
    "func.return"(%0) : (i8) -> ()
  }) : () -> ()
}) : () -> ()