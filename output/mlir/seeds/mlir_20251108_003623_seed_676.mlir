"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "stress_test_function"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2.718 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %4 = "arith.cmpi"("eq", %2, %0) : (i32, i32) -> i1
      %5 = "arith.cmpf"("oeq", %3, %1) : (f32, f32) -> i1
      %6:2 = "scf.if"(%4) ({
        %7 = "arith.addi"(%2, %0) : (i32, i32) -> i32
        %8 = "arith.addf"(%3, %1) : (f32, f32) -> f32
        "scf.yield"(%7, %8) : (i32, f32) -> ()
      }, {
        %9 = "arith.extsi"(%arg0) : (i32) -> i64
        %10 = "arith.extui"(%arg0) : (i32) -> i64
        %11 = "arith.trunci"(%arg0) <{overflowFlags = #arith_overflownone}> : (i32) -> i1
        "scf.yield"(%9, %10) : (i64, i64) -> ()
      }) : (i1) -> (i32, f32)
      "func.return"(%6#0, %6#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()