"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "nested_control_flow_fuzzing"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2:2 = "scf.if"(%arg0) <{results = (i32, f32) -> (i32, f32)}> ({
    ^bb1:
      %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      "scf.yield"(%3, %4) : (i32, f32) -> ()
    }, {
    ^bb2:
      %5 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.subf"(%arg1, %1) : (f32, f32) -> f32
      "scf.yield"(%5, %6) : (i32, f32) -> ()
    }) : (i32, f32)
    %7 = "scf.for"(%2#0, %2#0, %2#0) <{step = 1 : index, results = (i32, f32) -> (i32, f32)}> ({
    ^bb3(%indvar: index):
      %8 = "arith.addi"(%2#0, %indvar) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      %9 = "arith.addf"(%2#1, %indvar) : (f32, index) -> f32
      "scf.yield"(%8, %9) : (i32, f32) -> ()
    }) : (i32, f32)
    "func.return"(%7#0, %7#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()