"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_arith_ops"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%0, %arg1) <{predicate = 5 : i64}> : (f32, f32) -> i1
    %2 = "arith.cmpi"(%1, %c0_i1) <{predicate = 4 : i64}> : (i1, i1) -> i1
    %3 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.addf"(%3, %0) : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()