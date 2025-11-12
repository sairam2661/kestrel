"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_nested_scf"}> ({
    ^bb0(%arg0: i32):
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %3:2 = "scf.for"(%c0_i32, %c1_i32, %c1_i32) ({
        ^loop0(%iv: i32):
          %4:2 = "scf.if"(%iv) ({
            ^bb1:
              %5 = "arith.addi"(%arg0, %iv) : (i32, i32) -> i32
              "scf.yield"(%5, %iv) : (i32, i32) -> ()
          }, {
            ^bb2:
              "scf.yield"(%arg0, %iv) : (i32, i32) -> ()
          }) : (i32) -> (i32, i32)
          "scf.yield"(%3#0, %3#1) : (i32, i32) -> ()
      }) : (i32, i32) -> ()
      "func.return"(%3#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()