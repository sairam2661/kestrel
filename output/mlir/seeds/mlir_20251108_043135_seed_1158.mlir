"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_type_and_region"}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "arith.cmpf"(%arg0, %arg1, "oeq") : (f32, f32) -> i1
      %1 = "tosa.const"() <{value = 0 : i1}> : () -> i1
      %2 = "arith.cmpi"(%0, %1, "ne") : (i1, i1) -> i1
      %3 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
      %4 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
      %5 = "scf.if"(%2) ({
      ^bb0:
        %6 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
        "scf.yield"(%6) : (f32) -> ()
      }) {} : (i1) -> (f32)
      "func.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()