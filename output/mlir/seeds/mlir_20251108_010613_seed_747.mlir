"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i8, i32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i8, i32) -> i32
    "scf.if"(%arg1) ({
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
      %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> (i32)
    %3 = "arith.addi"(%arg0, %0) : (i8, i32) -> i32
    "func.return"(%arg0, %3) : (i8, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32):
    "scf.for"(%arg0, %arg0, 10) ({
    ^bb1(%iv: i32):
      "scf.for"(%iv, %iv, 5) ({
      ^bb2(%jv: i32):
        %1 = "arith.addi"(%iv, %jv) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "arith.constant"() <{value = 0 : i32}> : () -> i32
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()