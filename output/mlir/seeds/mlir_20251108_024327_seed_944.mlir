"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
      scf.if %0 : i1 -> (i32, i64)  ^bb1(%if_true: i32, %if_true1: i64)  :  i32  .contentOffset:  i64  ^bb2(%if_false: i32, %if_false1: i64) :  i32  .contentOffset:  i64  -> (i32, i64)  ^bb1:
        %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        %2 = "arith.addi"(%arg1, %arg1) : (i64, i64) -> i64
        scf.yield %1, %2 : (i32, i64)
      ^bb2:
        %3 = "arith.cmpi"(%arg1, %arg1, "ne") : (i64, i64) -> i1
        scf.if %3 : i1 -> (i32, i64)  ^bb3(%if_true2: i32, %if_true3: i64) :  i32  .contentOffset:  i64  ^bb4(%if_false2: i32, %if_false3: i64) :  i32  .contentOffset:  i64  -> (i32, i64)  ^bb3:
          %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
          %5 = "arith.addi"(%arg1, %arg1) : (i64, i64) -> i64
          scf.yield %4, %5 : (i32, i64)
        ^bb4:
          %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
          %7 = "arith.constant"() <{value = 0 : i64}> : () -> i64
          scf.yield %6, %7 : (i32, i64)
        scf.yield %if_true2, %if_true3 : (i32, i64)
      scf.yield %if_true, %if_true1 : (i32, i64)
    "func.return"(%if_true, %if_true1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()