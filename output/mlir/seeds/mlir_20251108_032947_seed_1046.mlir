"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.718 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"("slt", %2, %0) : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }, {
      %6 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
      "scf.yield"(%6) : (f32) -> ()
    }) : (i1) -> f32
    "func.return"(%2, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()