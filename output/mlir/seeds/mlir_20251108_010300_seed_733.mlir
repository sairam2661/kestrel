"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "test_unusual_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"("slt", %arg0, %0) : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.cmpf"("oeq", %1, %3) : (f32, f32) -> i1
    "func.return"(%arg0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()