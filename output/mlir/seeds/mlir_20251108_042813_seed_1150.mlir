"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f32), sym_name = "complex_nested_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.mulf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "arith.divi"(%1, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %7 = "arith.addf"(%3, %6) : (f32, f32) -> f32
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "arith.cmpi"("eq", %5, %8) : (i32, i32) -> i1

    %10:2 = "scf.if"(%9) ({
      %11 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %12 = "arith.constant"() <{value = 200.0 : f32}> : () -> f32
      "scf.yield"(%11, %12) : (i32, f32) -> ()
    }, {
      "scf.yield"(%5, %7) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)

    "func.return"(%5, %7, %10#1) : (i32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()