"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %4 = "arith.select"(%arg0, %1, %2) : (i32, i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %3, "eq") : (i32, i32) -> i1
      %6 = "arith.select"(%arg0, %arg1, %2) : (i32, i32, i32) -> i32
      "tt.return"(%6) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:80"} : () -> ()