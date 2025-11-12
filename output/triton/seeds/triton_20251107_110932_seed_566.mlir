"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.mulisi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.cmpi"(%2, %0, "slt") : (i32, i32) -> i1
      %4 = "scf.if"(%3) ({
        ^bb1(%arg2: i1):
          %5 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) : (i32) -> i32
      %6 = "scf.for"(%arg0, %arg1, %3) ({
        ^bb2(%arg3: i32, %arg4: i32, %arg5: i1):
          %7 = "arith.addi"(%arg3, %arg4) : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> ()
      }) : () -> ()
      "tt.return"(%4) : (i32) -> ()
  }) : (i32, i32) -> i32
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : (i32, i32) -> i32