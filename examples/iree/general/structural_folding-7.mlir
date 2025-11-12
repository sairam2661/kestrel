"builtin.module"() ({
  "util.func"() <{function_type = (i32) -> i32, sym_name = "unreachable_with_escaping_no_side_effect", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    "util.scf.unreachable"() <{message = "no side effect path"}> : () -> ()
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 43 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "util.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

