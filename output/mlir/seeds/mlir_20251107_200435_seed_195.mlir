"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i64, sym_name = "mixedArithFunc"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, "0") {"predicate" = "slt"} : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, "0.0") {"predicate" = "slt"} : (f32, f32) -> i1
    %2 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %4 = "arith.extsi"(%0) : (i1) -> i64
    %5 = "arith.extfs"(%1) : (i1) -> i64
    %6 = "arith.addi"(%4, %5) : (i64, i64) -> i64
    "func.return"(%6) : (i64) -> ()
  }) : () -> ()
}) : () -> ()