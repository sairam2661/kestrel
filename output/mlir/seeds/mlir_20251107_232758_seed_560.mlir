"builtin.module"() ({
  "func.func"() <{function_type = (index, i32, f32) -> (i32, f32), sym_name = "unusual_combo"}> ({
  ^bb0(%arg0: index, %arg1: i32, %arg2: f32):
    %0 = "arith.constant"() <{value = 42}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
    %4 = "scf.if"(%1) ({
      ^bb1:
        %5 = "arith.addi"(%2, %2) : (i32, i32) -> i32
        %6 = "arith.addf"(%3, %3) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) {
      "scf.yield"="#" : () -> (i32, f32)
    } : (i1) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()