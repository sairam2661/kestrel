"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16) -> (i32, f32), sym_name = "mixed_type_ops"}> ({
  ^bb0(%arg0: i8, %arg1: i16):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i8, i32) -> i32
    %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpf"("eq", %3, %1) : (f32, f32) -> i1
    "func.return"(%2, %4) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()