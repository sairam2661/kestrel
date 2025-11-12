"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "mixed_type_computation"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, "42") <{"comparator" = "eq"}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg0, "0.0") <{"comparator" = "ne"}> : (f32, f32) -> i1
    %2 = "arith.addi"(%arg1, "10") : (i32, i32) -> i32
    %3 = "arith.mulf"(%arg0, %arg0) : (f32, f32) -> f32
    %4 = "arith.addf"(%3, "1.0") : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()