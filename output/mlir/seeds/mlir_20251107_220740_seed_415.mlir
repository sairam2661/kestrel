"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "cross_dialect_unusual_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"("eq", %arg0, %arg1) : (i32, f32) -> i1
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "scf.if"(%0) ({
      %4 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> i32
    }, {
      %5 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> i32
    }) : (i1) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()