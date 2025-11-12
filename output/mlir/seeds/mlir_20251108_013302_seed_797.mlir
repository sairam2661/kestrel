"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
      %3 = "arith.cmpf"(%arg1, %arg1, "eq") : (f32, f32) -> i1
      ^bb1(%arg2: i1):
        "func.return"(%arg0, %arg1) : (i32, f32) -> ()
      ^bb2(%arg3: i1):
        %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        %5 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
        "func.return"(%4, %5) : (i32, f32) -> ()
      "scf.if"(%3) ({
        ^bb3:
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" = "scf.yield" : () -> ()
      } : (i1) -> ()
      "scf.if"(%2) ({
        ^bb4:
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" = "scf.yield" : () -> ()
      } : (i1) -> ()
      "func.return"(%0, %1) : (i32, f32) -> ()
  }) : (i32, f32) -> (i32, f32)
}) : () -> ()