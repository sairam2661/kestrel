"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32, i32), sym_name = "cse_recursive_effects_success"}> ({
    %0 = "test.op_with_memread"() : () -> i32
    %1 = "arith.constant"() <{value = true}> : () -> i1
    %2 = "scf.if"(%1) ({
      %5 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %4 = "arith.constant"() <{value = 24 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i1) -> i32
    %3 = "test.op_with_memread"() : () -> i32
    "func.return"(%0, %3, %2) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

