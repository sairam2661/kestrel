"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "delete_after_scf_unreachable", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    "util.scf.unreachable"() <{message = "early exit"}> : () -> ()
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 43 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "util.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

