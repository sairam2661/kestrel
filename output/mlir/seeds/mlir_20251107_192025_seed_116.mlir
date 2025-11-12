"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add_and_for"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "scf.for"(%arg0, %arg1) <{upper_bound = 10 : i32}> ({
        ^bb1(%iv: i32, %acc: i32):
          %1 = "arith.addi"(%iv, %acc) : (i32, i32) -> i32
          scf.yield %1 : i32
      }) : (i32) -> i32
      "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transformany_op) -> (), sym_name = "__transform_main"}> ({
      ^bb0(%arg0: !transformany_op):
        %0 = "transform.structured.match"(%arg0) <{filter_operand_types = [i32], ops = ["arith.addi"]}> : (!transformany_op) -> !transformany_op
        "transform.debug.emit_remark_at"(%0) <{message = "matched op name"}> : (!transformany_op) -> ()
        "transform.test_consume_operand"(%0) : (!transformany_op) -> ()
        "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()