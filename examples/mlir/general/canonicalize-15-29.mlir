"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "remove_zero_iteration_loop_vals"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "test.init"() : () -> i32
    %2 = "scf.for"(%arg0, %arg0, %0, %1) ({
    ^bb0(%arg1: index, %arg2: i32):
      %3 = "test.op"(%arg1, %arg2) : (index, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "test.consume"(%2) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

