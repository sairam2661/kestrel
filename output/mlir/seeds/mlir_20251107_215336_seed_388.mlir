"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> (f32, i1), sym_name = "complex_comp"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"("gt", %0, %arg0) : (f32, f32) -> i1
    %2 = "arith.cmpf"("lt", %0, %arg1) : (f32, f32) -> i1
    %3 = "arith.cmpi"("and", %1, %2) : (i1, i1) -> i1
    "func.return"(%0, %3) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()