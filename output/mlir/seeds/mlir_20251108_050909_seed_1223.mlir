"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_function"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
    "scf.if"(%2) ({
      %4 = "arith.addi"(%0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4, %1) : (i32, f32) -> ()
    }) {
      "scf.yield"  = "arith.addi" : (i32, i32) -> i32, "arith.addf"  = "arith.addf" : (f32, f32) -> f32
    } : (i1) -> (i32, f32)
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()