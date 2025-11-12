"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "test_complex_flow"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0.0001 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 123456789 : i32}> : () -> i32
    %2 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %3 = "arith.cmpi"(%arg1, %1, "slt") : (i32, i32) -> i1
    %4 = "arith.cmpf"(%2, %0, "oeq") : (f32, f32) -> i1
    %5 = "scf.if"(%3) ({
      %6 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) {
      "scf.yield" = {value = 0 : i32}
    } : (i1) -> i32
    %7 = "scf.if"(%4) ({
      %8 = "arith.mulf"(%arg0, %2) : (f32, f32) -> f32
      "scf.yield"(%8) : (f32) -> ()
    }) {
      "scf.yield" = {value = 0.0 : f32}
    } : (i1) -> f32
    "func.return"(%7, %5) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()