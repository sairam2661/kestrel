"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "remove_zero_iteration_loop"}> ({
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "test.init"() : () -> i32
    %3 = "scf.for"(%0, %1, %1, %2) ({
    ^bb0(%arg0: index, %arg1: i32):
      %4 = "test.op"(%arg0, %arg1) : (index, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "test.consume"(%3) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

