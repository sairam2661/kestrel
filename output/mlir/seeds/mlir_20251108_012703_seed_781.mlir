"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "complex_nested_loops"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      "scf.for"(%0, %1) <{step = 1 : i32}> ({
        ^bb1(%iv: i32):
          %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
          %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
          "scf.for"(%2, %3) <{step = 1 : i32}> ({
            ^bb2(%jv: i32):
              %4 = "arith.addi"(%iv, %jv) : (i32, i32) -> i32
              %5 = "arith.minsi"(%4, %1) : (i32, i32) -> i32
              "scf.yield"(%5) : (i32) -> ()
          }) : (i32, i32) -> (i32)
          "scf.yield"() : () -> ()
      }) : (i32, i32) -> ()
      "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()