"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpf"(%arg0, %arg0, "oeq") : (f32, f32) -> i1
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %3 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    "func.return"(%2, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()