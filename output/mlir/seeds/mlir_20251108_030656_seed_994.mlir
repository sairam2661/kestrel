"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "unary_arith_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %cmp0 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %const1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %const0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %select = "arith.select"(%cmp0, %const1, %const0) : (i1, i32, i32) -> i32
    "func.return"(%select) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "binary_arith_test"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %cmp1 = "arith.cmpf"(%arg0, %arg1, "ogt") : (f32, f32) -> i1
    %const2 = "llvm.mlir.constant"() <{value = 1.0 : f32}> : () -> f32
    %const3 = "llvm.mlir.constant"() <{value = 0.0 : f32}> : () -> f32
    %select2 = "arith.select"(%cmp1, %const2, %const3) : (i1, f32, f32) -> f32
    "func.return"(%select2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()