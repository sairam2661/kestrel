"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "transform_example"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    "transform.named_sequence"() <{sequence_name = "example_sequence"}> ({
      ^bb1(%arg1: i32):
        %1 = "arith.muli"(%arg1, %arg1) : (i32, i32) -> i32
        "transform.structured.match"() <{match_type = "i32"}> ({
          ^bb2(%arg2: i32):
            %2 = "arith.subi"(%arg2, %0) : (i32, i32) -> i32
            "transform.yield"(%2) : (i32) -> ()
          ^bb3(%arg3: i32):
            %3 = "arith.addi"(%arg3, %0) : (i32, i32) -> i32
            "transform.yield"(%3) : (i32) -> ()
        }) : (i32) -> (i32)
        "transform.yield"(%1) : (i32) -> ()
    }) : () -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()