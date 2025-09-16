"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "replace_single_iteration_loop_2"}> ({
    %0 = "arith.constant"() <{value = 5 : index}> : () -> index
    %1 = "arith.constant"() <{value = 6 : index}> : () -> index
    %2 = "arith.constant"() <{value = 11 : index}> : () -> index
    %3 = "test.init"() : () -> i32
    %4 = "scf.for"(%0, %2, %1, %3) ({
    ^bb0(%arg0: index, %arg1: i32):
      %5 = "test.op"(%arg0, %arg1) : (index, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "test.consume"(%4) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

