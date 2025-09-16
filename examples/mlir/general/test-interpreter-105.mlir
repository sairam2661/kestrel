"builtin.module"() ({
  "func.func"() <{function_type = (f32, memref<5xf32>, index) -> (), sym_name = "apply_dce"}> ({
  ^bb0(%arg1: f32, %arg2: memref<5xf32>, %arg3: index):
    %3 = "tensor.empty"() : () -> tensor<5xf32>
    "memref.store"(%arg1, %arg2, %arg3) : (f32, memref<5xf32>, index) -> ()
    %4 = "tensor.insert"(%arg1, %3, %arg3) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%0) <{ops = ["tensor.empty"]}> : (!transform.any_op) -> !transform.any_op
      "transform.apply_dce"(%0) : (!transform.any_op) -> ()
      %2 = "transform.num_associations"(%1) : (!transform.any_op) -> !transform.param<i64>
      "transform.debug.emit_param_as_remark"(%2) : (!transform.param<i64>) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

