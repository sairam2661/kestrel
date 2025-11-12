"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_add_with_complex"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      %1 = "tosa.const"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transformany_op) -> (), sym_name = "__transform_main"}> ({
      ^bb0(%arg0: !transformany_op):
        %0 = "transform.structured.match"(%arg0) <{filter_operand_types = [tensor<2x2xi32>], ops = ["arith.addi"]}> : (!transformany_op) -> !transformany_op
        "transform.debug.emit_remark_at"(%0) <{message = "matched op name"}> : (!transformany_op) -> ()
        "transform.test_consume_operand"(%0) : (!transformany_op) -> ()
        "transform.yield"() : () -> ()
    }) {transform.with_named_sequence} : () -> ()
  }) : () -> ()
}) : () -> ()