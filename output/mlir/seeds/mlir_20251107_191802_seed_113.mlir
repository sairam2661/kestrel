"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "arith.cmpf"(%0, %0, "oeq") : (f32, f32) -> i1
    %3 = "scf.if"(%1) ({
      ^bb1:
        %4 = "arith.addf"(%0, %0) : (f32, f32) -> f32
        "scf.yield"(%4) : (f32) -> f32
    }, {
      ^bb2:
        %5 = "arith.cmpf"(%0, %0, "ne") : (f32, f32) -> i1
        "scf.yield"(%0) : (f32) -> f32
    }) : (f32)
    %6 = "scf.if"(%2) ({
      ^bb3:
        "scf.yield"(%arg0) : (i32) -> i32
    }, {
      ^bb4:
        %7 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> i32
    }) : (i32)
    "func.return"(%6, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()