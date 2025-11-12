"builtin.module"() ({
  "tt.func"() <{function_type = (i1, i32) -> (i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    "scf.if"(%arg0) ({
      ^bb1(%cond1: i1):
        %2 = "arith.constant"() <{value = 100 : i32}> : () -> i32
        "scf.for"(%3: i32) ({
          "scf.yield"(%3) : (i32) -> ()
        }) : (i32) -> () "bounds"(%2, %1, 1) : (i32, i32, i32) -> () "step"() : () -> () "init"(%1) : (i32) -> () "parallel_loop"() : () -> () "unroll_factor"() : () -> () "unroll_count"() : () -> () "vectorize"() : () -> () "pipeline"() : () -> ()
      "scf.yield"(%2) : (i32) -> ()
    }, {
      ^bb2(%cond2: i1):
        %4 = "arith.constant"() <{value = 200 : i32}> : () -> i32
        "scf.for"(%5: i32) ({
          "scf.yield"(%5) : (i32) -> ()
        }) : (i32) -> () "bounds"(%4, %1, 1) : (i32, i32, i32) -> () "step"() : () -> () "init"(%1) : (i32) -> () "parallel_loop"() : () -> () "unroll_factor"() : () -> () "unroll_count"() : () -> () "vectorize"() : () -> () "pipeline"() : () -> ()
      "scf.yield"(%4) : (i32) -> ()
    }) : (i1) -> i32
    "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()