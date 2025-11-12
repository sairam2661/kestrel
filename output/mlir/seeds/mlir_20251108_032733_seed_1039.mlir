"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "rare_combination"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg1) : (i32, i32) -> f32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "arith.cmpf"(%0, 5.5, "slt") : (f32, f32) -> i1
    %3 = "scf.if"(%1, %2) ({
      %4 = "arith.addf"(%0, %0) : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> ()
    }, {
      %5 = "arith.addf"(%0, 1.0) : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }) : (i1, i1) -> f32
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()