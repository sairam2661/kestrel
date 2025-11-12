"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, vector<4xi32>) -> (f32, index), sym_name = "complex_interplay"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: vector<4xi32>):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (index, index) -> i1
    %2 = "llvm.mlir.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.cmpf"(%0, %0, "ueq") : (f32, f32) -> i1
    %4 = "scf.if"(%1) ({
    ^bb0:
      %5 = "arith.addf"(%0, %0) : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    %6 = "scf.if"(%3) ({
    ^bb0:
      %7 = "arith.addf"(%4, %0) : (f32, f32) -> f32
      "scf.yield"(%7) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    "func.return"(%6, %2) : (f32, index) -> ()
  }) : () -> ()
}) : () -> ()