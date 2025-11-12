"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, memref<10x2xi8>) -> (i32, f32), sym_name = "mixed_types_complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: memref<10x2xi8>):
    %0 = "arith.cmpi"(%arg0, %arg0, "slt") : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg1, %arg1, "slt") : (f32, f32) -> i1
    %2 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    "scf.if"(%0) ({
    ^bb0:
      %4 = "memref.load"(%arg2, %arg0, %arg0) : (memref<10x2xi8>, i32, i32) -> i8
      "scf.yield"(%4) : (i8) -> ()
    }) {
    } : (i1) -> i8
    "scf.if"(%1) ({
    ^bb0:
      %5 = "memref.load"(%arg2, %arg0, %arg0) : (memref<10x2xi8>, i32, i32) -> i8
      "scf.yield"(%5) : (i8) -> ()
    }) {
    } : (i1) -> i8
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()