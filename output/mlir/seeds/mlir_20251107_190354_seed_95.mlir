"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_nested_transforms"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "transform.structured.match"() <{pattern = "add_pattern"}> ({
      ^bb1(%match: i32, %match_1: i32):
        %1 = "arith.addi"(%match, %match_1) : (i32, i32) -> i32
        "transform.yield"(%1) : (i32) -> ()
    }) : (i32, i32) -> i32
    %2 = "transform.named_sequence"(%arg0, %arg1) <{sequence = "named_seq"}> ({
      ^bb2(%seq_arg0: i32, %seq_arg1: i32):
        %3 = "arith.subi"(%seq_arg0, %seq_arg1) : (i32, i32) -> i32
        "transform.yield"(%3) : (i32) -> ()
    }) : (i32, i32) -> i32
    "func.return"(%0, %2) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()