"builtin.module"() ({
  "spirv.func"() <{attributes = {sym_name = "spv_func"}}> ({
    ^bb0:
      %0 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
      %1 = "tosa.const"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.cmpf"(%0, %0) <{predicate = "oeq"}> : (f32, f32) -> i1
      %3 = "arith.cmpi"(%1, %1) <{predicate = "eq"}> : (i32, i32) -> i1
      %4 = "arith.addf"(%0, %0) <{fastmath = #arith_fastmath_attrs}> : (f32, f32) -> f32
      %5 = "llvm.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()