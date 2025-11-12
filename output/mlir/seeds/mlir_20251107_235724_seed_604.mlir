"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%c0 : i32, %c5 : i32) ({
      ^bb1(%arg1: i32, %arg2: i32):
        %2 = "arith.addi"(%arg1, %arg2) : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> ()
    }) : (i32, i32) -> (i32)
    "transform.named_sequence"() <{function_type = (!transform_any_op) -> (), sym_name = "nested_sequence"}> ({
      ^bb2(%arg3: !transform_any_op):
        %3 = "transform.structured.match"(%arg3) <{ops = ["scf.for"]}> : (!transform_any_op) -> !transform_any_op
        "transform.yield"() : () -> ()
    }) : () -> ()
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()