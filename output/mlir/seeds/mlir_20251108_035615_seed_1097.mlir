"builtin.module"() ({
  "func.func"() <{function_type = (f32, index) -> (i64, f64), sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: f32, %arg1: index):
      %0 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq"}> : (index, index) -> i1
      %1 = "arith.cmpf"(%arg0, %arg0) <{predicate = "oeq"}> : (f32, f32) -> i1
      %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
      %3 = "arith.constant"() <{value = 42 : i64}> : () -> i64
      %4 = "llvm.mlir.constant"() <{value = 3.14 : f64}> : () -> f64
      "func.return"(%3, %4) : (i64, f64) -> ()
  }) : () -> ()
}) : () -> ()