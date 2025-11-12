"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_transform_example"}> ({
    ^bb0(%arg0: i32):
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
      "transform.named_sequence"(%4) <{sequence_name = "example_sequence"}> ({
        ^bb1(%arg1: i32):
          %5 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
          "scf.for"(%5, %1, %3) <{lower_bound = 0 : i32, upper_bound = 5 : i32, step = 1 : i32}> ({
            ^bb2(%iv: i32):
              %6 = "arith.addi"(%iv, %arg1) : (i32, i32) -> i32
              "scf.yield"(%6) : (i32) -> ()
          }) : (i32) -> ()
          "transform.yield"(%5) : (i32) -> ()
      }) : (i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()