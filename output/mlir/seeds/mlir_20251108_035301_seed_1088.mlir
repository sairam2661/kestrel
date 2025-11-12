"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_function"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "scf.if"(%arg0) ({
    ^bb1(%arg2: i32):
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }, {
    ^bb2:
      %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> i32
    %3 = "transform.named_sequence"() <{function_type = (i32, i32) -> i32, sym_name = "transform_seq"}> ({
    ^bb3(%arg3: i32, %arg4: i32):
      %5 = "transform.structured.match"(%arg3) ({
      ^bb4(%arg5: i32):
        %6 = "arith.addi"(%arg4, %arg5) : (i32, i32) -> i32
        "transform.yield"(%6) : (i32) -> ()
      }) : (i32) -> i32
      "transform.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()