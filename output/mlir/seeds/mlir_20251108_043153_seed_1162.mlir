"builtin.module"() ({
  "func.func"() <{function_type = (f32, index) -> f32, sym_name = "complex_arith_example"}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %0 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.cmpf"("sgt", %arg0, %0) : (f32, f32) -> i1
    %3 = "arith.select"(%2, %arg0, %0) : (i1, f32, f32) -> f32
    %4 = "arith.cmpi"("sgt", %arg1, %1) : (index, index) -> i1
    %5 = "arith.select"(%4, %3, %0) : (i1, f32, f32) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()