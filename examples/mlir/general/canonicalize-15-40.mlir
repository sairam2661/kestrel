"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (i32, i1), sym_name = "replace_if_with_cond1"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.constant"() <{value = false}> : () -> i1
    %2:2 = "scf.if"(%arg0) ({
      %4 = "test.get_some_value"() : () -> i32
      "scf.yield"(%4, %0) : (i32, i1) -> ()
    }, {
      %3 = "test.get_some_value"() : () -> i32
      "scf.yield"(%3, %1) : (i32, i1) -> ()
    }) : (i1) -> (i32, i1)
    "func.return"(%2#0, %2#1) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()

