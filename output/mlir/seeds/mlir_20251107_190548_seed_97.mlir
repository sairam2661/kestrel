"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "uncommon_control_flow_mixed_dialects"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i1}> : () -> i1
    "scf.if"(%1) ({
      ^bb0:
        %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()