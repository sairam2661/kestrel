"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %4:2 = "scf.if"(%arg0) ({
        %5 = "arith.muli"(%2, %arg0) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
        %6 = "arith.mulf"(%3, %arg1) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> ()
      }, {
        %7 = "arith.subi"(%2, %arg0) <{overflowFlags = #arithOverflowNone}> : (i32, i32) -> i32
        %8 = "arith.subf"(%3, %arg1) : (f32, f32) -> f32
        "scf.yield"(%7, %8) : (i32, f32) -> ()
      }) : (i32) -> (i32, f32)
      "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()