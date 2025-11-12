"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, index) -> (f32, index), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: index):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"("oeq", %0, %arg0) <{loc = "loc(unknown):0:0"}> : (f32, f32) -> i1
    %2 = "arith.select"(%1, %arg2, %0) : (i1, index, f32) -> f32
    %3 = "arith.cmpi"("ne", %arg2, %0) <{loc = "loc(unknown):0:0"}> : (index, f32) -> i1
    %4 = "arith.select"(%3, %1, %0) : (i1, i1, f32) -> f32
    "func.return"(%4, %arg2) : (f32, index) -> ()
  }) : () -> ()
}) : () -> ()