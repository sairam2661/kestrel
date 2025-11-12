"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "complex_control_flow"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.if"(%0) ({
        ^bb1(%cond: i32):
          %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
          "scf.for"(%1, %0, %1, %1) ({
            ^bb2(%iv: i32):
              %2 = "arith.addi"(%iv, %1) : (i32, i32) -> i32
              "scf.yield"() : () -> ()
          }) : (i32) -> ()
          "scf.yield"() : () -> ()
      }) : (i32) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()