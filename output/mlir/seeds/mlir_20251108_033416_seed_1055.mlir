"builtin.module"() ({
  "func.func"() <{function_type = (f32, index) -> i8, sym_name = "test_complex"}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %0 = "arith.cmpi"(%arg1, %arg1, "eq") : (index, index) -> i1
    %1 = "arith.cmpf"(%arg0, %arg0, "oeq") : (f32, f32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %3 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    %4 = "spirv.ReturnValue"(%3) : (i8) -> ()
    "func.return"(%4) : (i8) -> ()
  }) : () -> ()
}) : () -> ()