"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.if"(%0) <{sym_name = "if_block"}> ({
        ^bb1(%cond: i1):
          %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          "scf.while"(%1) <{condition = @while_condition, update = @while_update}> ({
            ^bb2(%arg2: i32):
              %2 = "arith.cmpi"("sge", %arg2, %0) : (i32, i32) -> i1
              scf.yield %2 : i1
          }) {
            "func.return"  = "func.return"  : () -> i32
          }
      : (i1) -> ()  }) : (i32) -> ()
      ^bb3:
        %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "while_condition"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
      "scf.yield"(%0) : i1
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "while_update"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
      "scf.yield"(%0, %arg1) : (i32, i32)
  }) : () -> ()
}) : () -> ()