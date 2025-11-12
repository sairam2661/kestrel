"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %cmp = "arith.cmpf"(%arg0, %arg0) <{predicate = "oeq"}> : (f32, f32) -> i1
    %0:2 = "scf.if"(%cmp) ({
      %1 = "arith.addi"(%arg1, %c1) : (i32, i32) -> i32
      "scf.yield"(%arg0, %1) : (f32, i32) -> ()
    }, {
      %2 = "arith.addi"(%arg1, %c2) : (i32, i32) -> i32
      "scf.yield"(%arg0, %2) : (f32, i32) -> ()
    }) : (i1) -> (f32, i32)
    %3 = "arith.addf"(%0#0, %0#0) : (f32, f32) -> f32
    "scf.for"(%c0) <{upper_bound = 5 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %4 = "arith.addi"(%0#1, %iv) : (i32, index) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%3, %0#1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()