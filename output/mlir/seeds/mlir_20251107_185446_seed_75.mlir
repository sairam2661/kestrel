"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1, "ne") : (i32, i32) -> i1
    "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index, iter_args = []}> ({
    ^bb1(%iv: index):
      %3 = "arith.cmpi"(%iv, %0, "eq") : (index, i32) -> i1
      "scf.if"(%3) ({
      ^bb2:
        "scf.yield"() : () -> ()
      }) : () -> ()
    }) : (index) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()