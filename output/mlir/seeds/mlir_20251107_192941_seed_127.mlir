"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.for"(%arg0, %c0, %c1) ({
    ^bb1(%iv: i32):
      "scf.for"(%arg1, %c0, %c1) ({
      ^bb2(%jv: i32):
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()