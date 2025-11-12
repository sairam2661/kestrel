"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operation"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %0) {"predicate" = "eq"} : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %1) {"predicate" = "oeq"} : (f32, f32) -> i1
    %4 = "scf.if"(%2) ({
    ^bb1():
      %5 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> i32
    }) : (i32) -> i32
    %6 = "scf.if"(%3) ({
    ^bb2():
      %7 = "arith.addf"(%1, %1) : (f32, f32) -> f32
      "scf.yield"(%7) : (f32) -> f32
    }) : (f32) -> f32
    "func.return"(%4, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()