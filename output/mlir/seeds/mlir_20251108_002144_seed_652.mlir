"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "test_transform_sequence"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg0) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) : (i32, i32) -> i32
    "transform.named_sequence"(%3) <{sequence_name = "test_sequence"}> ({
      "transform.structured.match"(%3) <{pattern_name = "match_pattern"}> ({
        ^bb1(%matched: i32):
          %4 = "arith.addi"(%matched, %0) : (i32, i32) -> i32
          "transform.yield"(%4) : (i32) -> ()
      }) : (i32) -> ()
    }) : (i32) -> ()
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()