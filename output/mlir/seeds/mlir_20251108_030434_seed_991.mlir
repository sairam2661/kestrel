"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f64), sym_name = "complexOpSequence"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"("slt", %0, %arg0) : (i32, i32) -> i1
    scf.if %1:  () -> ()  ^true0(%cond: i1)  :  "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    ^true0(%cond: i1):
      %2 = "arith.extf"(%arg1) : (f32) -> f64
      "scf.yield"(%2) : (f64) -> ()
    ^false1:
      %3 = "arith.constant"() <{value = 0.0 : f64}> : f64
      "scf.yield"(%3) : (f64) -> ()
    scf.if %1:  () -> ()  ^true2(%cond: i1)  :  "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    ^true2(%cond: i1):
      %4 = "arith.extf"(%arg1) : (f32) -> f64
      "scf.yield"(%4) : (f64) -> ()
    ^false3:
      %5 = "arith.constant"() <{value = 0.0 : f64}> : f64
      "scf.yield"(%5) : (f64) -> ()
    "func.return"(%0, %arg1, %4) : (i32, f32, f64) -> ()
  }) : () -> ()
}) : () -> ()