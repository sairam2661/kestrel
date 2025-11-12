"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16) -> (i32, f32), sym_name = "mixed_types_example"}> ({
  ^bb0(%arg0: i8, %arg1: i16):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i8, i16) -> i1
    %1 = "arith.addf"(%arg0, %arg1) : (i8, i16) -> f32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.cmpf"(%1, %1, "uge") : (f32, f32) -> i1
    "func.return"(%2, %3) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()