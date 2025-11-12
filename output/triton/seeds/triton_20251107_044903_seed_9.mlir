"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.remsi"(%3, %1) : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %6 = "arith.xori"(%5, true) : (i1, i1) -> i1
      %7 = "arith.select"(%6, %arg0, %arg1) : (i1, i32, i32) -> i32
      "tt.return"(%7) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()