"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "complex_spirv_and_llvm"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "spirv.ReturnValue"(%1) : (i32) -> i32
    %3 = "arith.cmpi"("eq", %1, %2) : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg0, %0) : (i1, f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()