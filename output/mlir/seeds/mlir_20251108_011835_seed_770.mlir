"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "test_complex"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %3 = "arith.cmpf"("oeq", %arg1, %1) : (f32, f32) -> i1
      %4 = "arith.cmpi"("slt", %arg0, %0) : (i32, i32) -> i1
      %5 = "arith.select"(%4, %0, %arg0) : (i1, i32, i32) -> i32
      "func.return"(%5, %2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()