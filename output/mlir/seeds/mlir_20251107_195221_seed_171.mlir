"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "arith.cmpf"(%arg0, %arg1) <{operation = "oeq"}> : (f32, f32) -> i1
      %1 = "arith.cmpi"(%arg0, %arg1) <{operation = "sgt"}> : (f32, f32) -> i1
      %2 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
      %3 = "arith.addf"(%arg0, %2) : (f32, f32) -> f32
      "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()