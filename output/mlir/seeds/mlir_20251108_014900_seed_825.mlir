"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> (f64), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "arith.addf"(%arg0, %arg1) : (f64, f64) -> f64
    %1 = "arith.cmpf"(%0, %arg1, "OEQ") : (f64, f64) -> i1
    %2 = "arith.const"() <{value = 1.0 : f64}> : () -> f64
    %3 = "arith.select"(%1, %2, %0) : (i1, f64, f64) -> f64
    %4 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %5 = "arith.cmpi"(%4, 100, "slt") : (i32, i32) -> i1
    %6 = "arith.select"(%5, %3, %2) : (i1, f64, f64) -> f64
    "func.return"(%6) : (f64) -> ()
  }) : () -> ()
}) : () -> ()