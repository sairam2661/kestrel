"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "fuzz_complex_float_ops"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.mulf"(%0, %arg1) : (f32, f32) -> f32
    %2 = "arith.subf"(%1, %arg0) : (f32, f32) -> f32
    %3 = "arith.cmpf"(%2, %arg1) <{predicate = 5 : i64}> : (f32, f32) -> i1
    %4 = "arith.select"(%3, %0, %1) : (i1, f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
  "spirv.func"() <{function_type = (f32) -> none, sym_name = "fuzz_spirv_return"}> ({
  ^bb0(%arg0: f32):
    "spirv.ReturnValue"(%arg0) : (f32) -> none
  }) : () -> ()
  "llvm.func"() <{function_type = (i32) -> i32, sym_name = "fuzz_llvm_constant"}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_flags} > : (i32, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()