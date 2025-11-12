"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f32), sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg0, %arg0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %2 = "llvm.mlir.constant"() <{value = 42 : i32}> : i32
    %3 = "arith.addf"(%0, %2) : (f32, i32) -> f32
    "func.return"(%arg0, %0, %3) : (i32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()