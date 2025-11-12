"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32) -> (f32, f32), sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: i32):
      %0 = "arith.cmpi"(%arg2, %arg2) <{predicate = "eq"}> : (i32, i32) -> i1
      %1 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
      %2 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
      %3 = "tosa.const"() <{value = 0.0 : f32}> : () -> f32
      %4 = "arith.cmpf"(%2, %3) <{predicate = "olt"}> : (f32, f32) -> i1
      %5 = "scf.if"(%4) ({
        ^bb1:
          %6 = "arith.addf"(%2, %3) : (f32, f32) -> f32
          "scf.yield"(%6) : (f32) -> f32
      }) {
        "scf.yield" = (f32) -> f32
      } : (i1) -> (f32)
      "func.return"(%2, %5) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()