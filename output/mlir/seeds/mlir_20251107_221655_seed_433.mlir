"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_operations"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %1 = "arith.cmpf"("gt", %0, %arg1) : (f32, f32) -> i1
      %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %3 = "arith.cmpi"("slt", %arg0, %2) : (i32, i32) -> i1
      %4 = "scf.if"(%1) ({
        ^bb1:
          %5 = "arith.addf"(%0, %0) : (f32, f32) -> f32
          "scf.yield"(%5) : (f32) -> f32
      }) : (f32) -> f32
      %6 = "scf.if"(%3) ({
        ^bb2:
          %7 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
          "scf.yield"(%7) : (f32) -> f32
      }) : (f32) -> f32
      "func.return"(%arg0, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()