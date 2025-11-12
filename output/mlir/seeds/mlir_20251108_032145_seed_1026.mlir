"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32, i32) -> f32, sym_name = "complex_op_combinations"}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: i32, %arg3: i32):
      %0 = "arith.cmpi"(%arg2, %arg3, "slt") : (i32, i32) -> i1
      %1 = "arith.cmpf"(%arg0, %arg1, "OGT") : (f32, f32) -> i1
      %2 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
      %3 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      %4 = "transform.yield"(%0, %1, %2, %3) : (i1, i1, f32, i32) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()