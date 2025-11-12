"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_op_sequence"}> ({
    %cst0 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %cst1 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %cst2 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %cst3 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32

    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"("oeq", %0, %cst2) : (f32, f32) -> i1
    %2 = "arith.select"(%1, %cst3, %cst0) : (i1, f32, f32) -> f32
    %3 = "arith.mulf"(%2, %cst1) : (f32, f32) -> f32

    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()