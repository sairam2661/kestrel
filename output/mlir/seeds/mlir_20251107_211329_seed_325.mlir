"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_control_flow", sym_visibility = "private"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflowModes} >: (i32, i32) -> i32
      "scf.if"(%0) ({
        ^bb1(%arg1: i32):
          %1 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
          "scf.for"() ({
            ^bb2(%iv: i32):
              %2 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
              "scf.yield"(%2) : (i32) -> ()
          }) {"%iv" = 0: i32, "upper_bound" = 10: i32, "step" = 1: i32} : () -> i32
          "scf.yield"(%1) : (i32) -> ()
      }, {
        "scf.yield"() : () -> ()
      }) : (i32) -> i32
      "func.return"(%0) : (i32) -> ()
    }) : () -> ()
}) : () -> ()