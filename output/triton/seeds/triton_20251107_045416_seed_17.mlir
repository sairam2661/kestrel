"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_combo"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.xori"(%arg1, %0) : (i32, i32) -> i32
      %3 = "arith.cmpi"(%1, %2, "slt") : (i32, i32) -> i1
      %4 = "arith.select"(%3, %1, %2) : (i1, i32, i32) -> i32
      %5 = "arith.subi"(%4, %0) : (i32, i32) -> i32
      "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()