"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_nested_ops"}> ({
    ^bb0(%arg0: i32):
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.if"(%2) <{resultTypes = [i32]}> ({
        ^bb1(%cond: i32):
          %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
          "scf.for"(%3, %arg0, %2) <{step = 1 : i32, resultTypes = []}> ({
            ^bb2(%iv: i32):
              %4 = "arith.divsi"(%iv, %3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
              "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"(%arg0) : (i32) -> i32
      }) {
        "scf.yield" = 0 : i32
      } : (i32) -> i32
  }) : (i32) -> i32
}) : () -> ()