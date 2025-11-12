"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpi"("eq", %1, %0) : (i32, i32) -> i1
    %5 = "arith.cmpf"("oeq", %3, %2) : (f32, f32) -> i1
    %6 = "scf.if"(%4) {
      "scf.yield" 	= "llvm.mlir.constant" 	: () -> i1
    } : i1 -> (i1)
    "func.return"(%3, %6) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()