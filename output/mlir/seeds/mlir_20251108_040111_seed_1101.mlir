"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.if"(%0) ({
    ^bb1(%arg2: i1):
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.if"(%arg2) ({
      ^bb2(%arg3: i1):
        %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.for"(%1, %2, %0) ({
        ^bb3(%arg4: i32):
          %3 = "arith.subi"(%arg4, %1) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> ()
        }) : (i32, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.yield"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()