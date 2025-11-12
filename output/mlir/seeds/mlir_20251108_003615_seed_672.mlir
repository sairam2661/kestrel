"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_operations"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.cmpi"("eq", %arg0, %0) : (i32, i32) -> i1
      %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %5 = "arith.cmpf"("slt", %arg1, %1) : (f32, f32) -> i1
      %6 = "scf.if"(%3) ({
        %7 = "arith.constant"() <{value = 100 : i32}> : () -> i32
        "scf.yield"(%7, %4) : (i32, f32) -> ()
      }, {
        %8 = "arith.constant"() <{value = 200 : i32}> : () -> i32
        "scf.yield"(%8, %4) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "func.return"(%6#0, %6#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()