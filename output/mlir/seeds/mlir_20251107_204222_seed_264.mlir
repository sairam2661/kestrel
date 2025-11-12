"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>, sym_name = "test_elementwise_add"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    "func.return"(%0) : (tensor<10x10xi32>) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transformany_op) -> (), sym_name = "__transform_elementwise_add"}> ({
  ^bb1(%arg2: !transformany_op):
    %1 = "transform.structured.match"(%arg2) <{ops = ["func.func"]}> : (!transformany_op) -> !transformopfunc
    "transform.apply_patterns"(%1) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
      "transform.apply_patterns.tensor.fold_tensor_empty"() <{fold_single_use_only = false}> : () -> ()
    }) : (!transformopfunc) -> ()
    "transform.yield"() : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()