"
builtin.module"() ({
  "spirv.func"() <{function_type = (i32, f64) -> (f64, i32), sym_name = "mixed_type_function"}> ({
    ^bb0(%arg0: i32, %arg1: f64):
      %0 = "arith.addf"(%arg1, %arg1) <{fastmath = #arith_fastmathattrs_fastmath_attrs}> : (f64, f64) -> f64
      %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
      %2 = "arith.cmpf"(%arg1, %arg1, "oeq") : (f64, f64) -> i1
      %3 = "arith.constant"() <{value = 42.0 : f64}> : () -> f64
      %4 = "tosa.const"() <{value = 10 : i32}> : () -> i32
      %5 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
      %6 = "arith.addf"(%0, %3) <{fastmath = #arith_fastmathattrs_fastmath_attrs}> : (f64, f64) -> f64
      %7 = "arith.addi"(%arg0, %5) : (i32, i32) -> i32
      %8 = "arith.cmpi"(%7, %4, "sgt") : (i32, i32) -> i1
      %9 = "arith.select"(%8, %7, %arg0) : (i1, i32, i32) -> i32
      "spirv.ReturnValue"(%6, %9) : (f64, i32) -> ()
  }) : () -> ()
}) : () -> ()