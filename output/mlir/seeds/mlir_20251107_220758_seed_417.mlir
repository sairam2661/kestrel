"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "scf.if"(%2) ({
      ^bb0:
        %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
        "scf.yield"(%4) : (i32) -> ()
    }, {
      ^bb0:
        %5 = "arith.constant"() <{value = 20 : i32}> : () -> i32
        "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()