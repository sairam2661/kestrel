"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f32), sym_name = "mixed_dialect_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %4 = "arith.cmpf"(%1, %3) <{predicate = 4 : i64}> : (f32, f32) -> i1
    %5 = "scf.if"(%2) ({
      ^bb0:
        %6 = "arith.addi"(%0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> i32
    }) {
      "scf.yield"
    ="#" : i32
    } : (i32) -> i32
    %7 = "scf.if"(%4) ({
      ^bb0:
        %8 = "arith.addf"(%1, %1) : (f32, f32) -> f32
        "scf.yield"(%8) : (f32) -> f32
    }) {
      "scf.yield"
    ="#" : f32
    } : (f32) -> f32
    "func.return"(%5, %7, %arg1) : (i32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()