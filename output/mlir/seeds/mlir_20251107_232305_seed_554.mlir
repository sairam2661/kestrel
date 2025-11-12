"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "mix_operations"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 42}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "tosa.const"() <{value = 100}> : () -> i32
      %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %0, "eq") : (i32, i32) -> i1
      "scf.for"() <{lower_bound = 0 : index, upper_bound = 5 : index, step = 1 : index}> ({
        ^bb1(%iv: index):
          %5 = "arith.constant"() <{value = 1}> : () -> i32
          %6 = "arith.addi"(%3, %5) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) : (i32) -> ()
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()