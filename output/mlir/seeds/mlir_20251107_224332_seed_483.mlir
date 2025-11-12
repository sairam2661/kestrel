"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "scf.if"(%arg0) <{true.bb = "^bb1", false.bb = "^bb2"}> ({
      ^bb1(%arg2: i32):
        %1 = "scf.for"(%arg2, %arg2, %arg2) <{upper_bound = 10, step = 1, iter_args = ["%arg2"]}> ({
          ^bb3(%arg3: i32):
            %2 = "arith.addi"(%arg3, %arg1) : (i32, i64) -> i32
            scf.yield %2 : i32
        }) : (i32)
        scf.yield %1 : i32
      ^bb2(%arg4: i32):
        %3 = "arith.subi"(%arg4, %arg1) : (i32, i64) -> i32
        scf.yield %3 : i32
    }) : (i32)
    "func.return"(%0, %arg1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()