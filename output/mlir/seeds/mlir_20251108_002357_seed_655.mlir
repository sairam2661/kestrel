"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    "scf.if"(%0) : (f32) -> ()  "bb1"() : () -> ()  "bb2"(%1: f32)  ({
      %2 = "arith.mulf"(%1, %1) : (f32, f32) -> f32
      "scf.yield"(%2) : (f32) -> ()
    })  {
      "scf.yield"  ={}, "{}"  ={}, "{}"  ={}  }  : (f32) -> ()
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()