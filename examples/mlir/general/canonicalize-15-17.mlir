"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "constant_iter_arg"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"(%arg0, %arg1, %arg2, %0) ({
    ^bb0(%arg3: index, %arg4: i32):
      "test.use"(%arg4) : (i32) -> ()
      "scf.yield"(%0) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

