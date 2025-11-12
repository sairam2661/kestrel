"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64, f32, f32) -> (i64, i64, f32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: f32, %arg3: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "arith.subf"(%arg2, %arg3) : (f32, f32) -> f32
    %2 = "arith.muli"(%0, %0) : (i64, i64) -> i64
    %3 = "arith.divf"(%arg2, %arg3) : (f32, f32) -> f32
    "func.return"(%2, %0, %1, %3) : (i64, i64, f32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "control_flow"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "scf.if"(%0) ({
    ^bb1:
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "scf.if"(%1) ({
      ^bb2:
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.yield"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "affine_min_max"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.min"(%arg0, %arg1) : (index, index) -> index
    %1 = "affine.max"(%arg0, %arg1) : (index, index) -> index
    "func.return"(%0, %1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()