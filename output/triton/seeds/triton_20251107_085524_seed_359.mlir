"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_loops_and_ifs", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      "scf.for"(%arg0, %0, %1) ({
        ^bb1(%iv: i32):
          %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
          %3 = "arith.cmpi"(%iv, %2, "slt") : (i32, i32) -> i1
          "scf.if"(%3) ({
            ^bb2:
              %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
              %5 = "arith.muli"(%iv, %4) : (i32, i32) -> i32
              "scf.yield"(%5) : (i32) -> ()
          }, {
            ^bb3:
              %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
              %7 = "arith.addi"(%iv, %6) : (i32, i32) -> i32
              "scf.yield"(%7) : (i32) -> ()
          }) : (i1) -> i32
          "scf.yield"() : () -> ()
      }) : (i32, i32, i32) -> ()
      "tt.return"(%arg0) : (i32) -> ()
  }) : (i32) -> (i32)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()