"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    %4 = "arith.muli"(%arg0, %3) : (i32, i32) -> i32
    %5 = "arith.divsi"(%arg1, %4) : (i32, i32) -> i32
    %6 = "arith.remsi"(%arg0, %5) : (i32, i32) -> i32
    %7 = "arith.subi"(%arg1, %6) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()