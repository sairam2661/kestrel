"builtin.module"() ({
  "util.func"() <{function_type = (index) -> i32, sym_name = "elide_trunc_of_index_castui", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.index_castui"(%arg0) : (index) -> i64
    %1 = "arith.trunci"(%0) <{overflowFlags = #arith.overflow<none>}> : (i64) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

