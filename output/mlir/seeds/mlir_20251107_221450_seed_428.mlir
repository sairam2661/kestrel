"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    "scf.if"(%2) <{operands = [f32]}> ({
      %3 = "arith.addf"(%2, %2) : (f32, f32) -> f32
      "scf.yield"(%3) : (f32) -> ()
    }) {
      "scf.yield"="%3" : (f32) -> ()
    } : (f32) -> (f32)
    "scf.for"(%0, %c0_i32, %c10_i32) <{operands = [i32], lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
      %4 = "arith.addi"(%0, %c1_i32) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) {
      "scf.yield"="%4" : (i32) -> ()
    } : (i32) -> (i32)
    "func.return"(%2, %4) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()