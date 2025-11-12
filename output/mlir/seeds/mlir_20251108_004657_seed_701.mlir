"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_example"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
      %3 = "arith.cmpf"(%1, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
      "scf.if"(%2) ({
        ^bb1:
          %4 = "arith.addi"(%0, %0) : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" 	= "scf.yield" : () -> ()
      } : (i1) -> ()
      "scf.if"(%3) ({
        ^bb2:
          %5 = "arith.addf"(%1, %1) : (f32, f32) -> f32
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" 	= "scf.yield" : () -> ()
      } : (i1) -> ()
      "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()