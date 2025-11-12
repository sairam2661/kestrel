"builtin.module"() ({
  "func.func"() <{function_type = (i32, index) -> (f32, i32), sym_name = "mixed_type_complexity"}> ({
  ^bb0(%arg0: i32, %arg1: index):
    %0 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    %3 = "arith.addi"(%arg0, %1) : (i32, index) -> i32
    %4 = "scf.for"(%arg1, %3, %1) ({
    ^bb1(%arg2: index, %arg3: i32):
      %5 = "arith.addi"(%arg3, %arg0) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%2, %4) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()