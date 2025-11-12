"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cmp0 = "arith.cmpi"(%arg0, %c0_i32, "ne") : (i32, i32) -> i1
    %if0 = "scf.if"(%cmp0) ({
    ^bb1(%true: i1):
      %cmp1 = "arith.cmpi"(%arg1, %c1_i32, "ne") : (i32, i32) -> i1
      %if1 = "scf.if"(%cmp1) ({
      ^bb2(%true: i1):
        %result0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        %result1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%result0, %result1) : (i32, i32) -> ()
      }) {
      } : (i1) -> (i32, i32)
      "scf.yield"(%if1#0, %if1#1) : (i32, i32) -> ()
    }) {
    } : (i1) -> (i32, i32)
    "func.return"(%if0#0, %if0#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()