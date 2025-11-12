"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq", result_type = i1}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg0, %arg0) <{predicate = "oeq", result_type = i1}> : (f32, f32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %3 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    %4 = "scf.if"(%0) ({
      ^bb1(%cond: i1):
        %5 = "arith.addf"(%2, %2) : (f32, f32) -> f32
        "scf.yield"(%5, %3) : (f32, i32) -> (f32, i32)
    }) {
      "scf.yield"  = "arith.subf"   : (f32, f32) -> f32
      }  : (f32, i32) -> (f32, i32)
    "func.return"(%4#0, %4#1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()