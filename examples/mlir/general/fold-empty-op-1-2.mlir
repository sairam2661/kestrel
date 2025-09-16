"builtin.module"() ({
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg4: !transform.any_op):
      %3 = "transform.structured.match"(%arg4) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.op<"func.func">
      "transform.apply_patterns"(%3) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
        "transform.apply_patterns.tensor.fold_tensor_empty"() <{fold_single_use_only = false}> : () -> ()
      }) : (!transform.op<"func.func">) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
  "func.func"() <{function_type = (index, index, index, index) -> tensor<5x?x?xf32>, sym_name = "concats_of_empty"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "tensor.empty"(%arg0, %arg1) : (index, index) -> tensor<5x?x?xf32>
    %1 = "tensor.empty"(%arg2, %arg3) : (index, index) -> tensor<5x?x?xf32>
    %2 = "tensor.concat"(%0, %1) <{dim = 1 : i64}> : (tensor<5x?x?xf32>, tensor<5x?x?xf32>) -> tensor<5x?x?xf32>
    "func.return"(%2) : (tensor<5x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

