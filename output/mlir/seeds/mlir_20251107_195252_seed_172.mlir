"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> (f32), sym_name = "test_cmpf_and_addf"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %cst = "arith.constant"() <{value = 0.500000e+00 : f32}> : () -> f32
    %0 = "arith.cmpf"(%arg0, %arg1, "OEQ") : (f32, f32) -> i1
    %1 = "arith.select"(%0, %arg0, %cst) : (i1, f32, f32) -> f32
    %2 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %3 = "arith.cmpf"(%2, %cst, "OGT") : (f32, f32) -> i1
    %4 = "arith.select"(%3, %2, %cst) : (i1, f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()