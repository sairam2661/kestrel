"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arith_spirv"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.cmpf"("uge", %arg1, %2) : (f32, f32) -> i1
    "scf.if"(%3) ({
    ^bb0:
      %4 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> ()
    }) {
    } : (i1) -> (f32)
    "scf.yield"(%1, %3) : (i32, i1) -> ()
  }) : (i32, f32) -> (i32, f32)
  "spirv.func"() <{function_type = (f32) -> f32, sym_name = "spirv_op"}> ({
  ^bb0(%arg2: f32):
    %5 = "spirv.ReturnValue"(%arg2) : (f32) -> f32
    "scf.yield"(%5) : (f32) -> ()
  }) : (f32) -> (f32)
}) : () -> ()