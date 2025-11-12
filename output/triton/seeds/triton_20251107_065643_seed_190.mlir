"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_addition"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg0, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %arg1, %arg0) : (i1, i32, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()