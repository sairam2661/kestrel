"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.mulf"(%0, %0) : (f32, f32) -> f32
    %2 = "arith.subf"(%1, %arg0) : (f32, f32) -> f32
    %3 = "arith.divf"(%2, %arg1) : (f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "nested_for_loops"}> ({
  ^bb0(%arg0: i32):
    "scf.for"(%arg1: i32, %arg2: i32) ({
      ^bb1(%i: i32):
        "scf.for"(%j: i32, %k: i32) ({
          ^bb2(%l: i32):
            %4 = "arith.addi"(%i, %j) : (i32, i32) -> i32
            "scf.yield"() : () -> ()
        }) {"^bb2"  = (i32, i32) -> ()} : (i32, i32) -> ()
        "scf.yield"() : () -> ()
    }) {"^bb1"  = (i32, i32) -> ()} : (i32, i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()