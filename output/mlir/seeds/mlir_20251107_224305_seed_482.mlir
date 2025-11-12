"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "complex_flow"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.if"(%0) <{result = i32}> ({
        ^bb1:
          %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
          "scf.if"(%1) ({
            ^bb2:
              %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
              "scf.for"(%2) <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
                ^bb3(%iv: i32):
                  %3 = "arith.addi"(%iv, %2) : (i32, i32) -> i32
                  "test.sink"(%3) : (i32) -> ()
                  "scf.yield"() : () -> ()
              }) : (i32) -> ()
              "scf.yield"(%2) : (i32) -> ()
          }) : (i32) -> ()
          "scf.yield"(%1) : (i32) -> ()
      }) : (i32) -> ()
      "scf.yield"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()