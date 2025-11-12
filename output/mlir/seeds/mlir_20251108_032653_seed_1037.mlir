"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedOps"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"("eq", %0, %arg0) : (i32, i32) -> i1
    %3 = "arith.cmpf"("eq", %1, %arg1) : (f32, f32) -> i1
    %4:2 = "scf.if"(%2) ({
    ^bb0(%arg2: i32, %arg3: f32):
      %5 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
      %6 = "arith.addf"(%arg3, %arg3) : (f32, f32) -> f32
      "scf.yield"(%5, %6) : (i32, f32) -> ()
    }, {
    ^bb0(%arg2: i32, %arg3: f32):
      %5 = "arith.subi"(%arg2, %arg2) : (i32, i32) -> i32
      %6 = "arith.subf"(%arg3, %arg3) : (f32, f32) -> f32
      "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) : (i32, f32) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()