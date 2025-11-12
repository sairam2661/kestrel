"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    %6 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %7 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %8 = "arith.select"(%7, %1, %2) : (i1, i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()