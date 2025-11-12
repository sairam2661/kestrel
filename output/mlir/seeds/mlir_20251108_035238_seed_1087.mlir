"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "nested_transform_example"}> ({
  ^bb0(%arg0: i64):
    %1 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    "transform.named_sequence"() <{function_type = (!transformany_op, !transformany_value, !transformany_value) -> (), sym_name = "__nested_transform"}> ({
    ^bb1(%arg1: !transformany_op, %arg2: !transformany_value, %arg3: !transformany_value):
      "transform.structured.match"(%arg2) <{patterns = ["pattern1", "pattern2"]}> ({
      ^bb2(%arg4: !transformany_value):
        %5 = "arith.addi"(%arg4, %1) : (i64, i64) -> i64
        "transform.debug.emit_remark_at"(%arg4) <{message = "matched value"}> : (!transformany_value) -> ()
        "transform.yield"() : () -> ()
      }) : () -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%arg0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()