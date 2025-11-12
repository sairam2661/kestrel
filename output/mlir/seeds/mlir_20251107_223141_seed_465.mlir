"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "scf.if"(%1) ({
    ^bb0:
      %5 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) {
    } : (i32) -> i32
    "func.return"(%4, %3) : (i32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> (index), sym_name = "loop_test"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "scf.for"(%arg0, %0, %0) ({
    ^bb0(%arg2: index, %arg3: index):
      %4 = "arith.addi"(%arg3, %arg2) : (index, index) -> index
      "scf.yield"(%4) : (index) -> ()
    }) : (index, index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()