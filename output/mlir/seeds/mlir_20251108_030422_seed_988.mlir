"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0) {"predicate"="eq"} : (i32, i32) -> i1
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %3 = "arith.cmpf"(%1, %1) {"predicate"="oeq"} : (f32, f32) -> i1
    %4 = "arith.constant"() {"value"=1 : i32} : i32
    %5 = "arith.addi"(%2, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() {"value"=3.14 : f32} : f32
    %7 = "arith.addf"(%1, %6) : (f32, f32) -> f32
    "func.return"(%5, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()