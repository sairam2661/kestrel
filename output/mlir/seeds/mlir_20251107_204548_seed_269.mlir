"builtin.module"() ({
  "func.func"() <{function_type = (i32, i8) -> (f32, i1), sym_name = "mixedTypeOperation"}> ({
  ^bb0(%arg0: i32, %arg1: i8):
    %0 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = "lt"}> : (i32, i8) -> i1
    %2 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    %3 = "arith.cmpf"(%2, %0) <{predicate = "gt"}> : (f32, f32) -> i1
    "func.return"(%2, %3) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()