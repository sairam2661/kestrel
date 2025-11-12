"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "unusual_edge_case"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, %arg1) <{operation = "eq"}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg0, %arg0) <{operation = "oeq"}> : (f32, f32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %3 = "scf.if"(%0) ({
      ^bb1:
        %4 = "arith.addf"(%2, %arg0) : (f32, f32) -> f32
        "scf.yield"(%4) : (f32) -> ()
    }) : (f32) -> (f32)
    %5 = "scf.if"(%1) ({
      ^bb2:
        %6 = "arith.addf"(%2, %arg0) : (f32, f32) -> f32
        "scf.yield"(%6) : (f32) -> ()
    }) : (f32) -> (f32)
    "func.return"(%5, %arg1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()