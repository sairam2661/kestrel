"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops_and_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %0 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %1 = "arith.addi"(%iv, %c1_i32) : (i32, i32) -> i32
      %2 = "scf.for"(%iv) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
      ^bb2(%jv: i32):
        %3 = "arith.muli"(%iv, %jv) : (i32, i32) -> i32
        %4 = "arith.addi"(%1, %3) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32) -> (i32)
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()