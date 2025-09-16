"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>) -> (), sym_name = "loop_pipeline_op"}> ({
  ^bb0(%arg1: memref<?xf32>, %arg2: memref<?xf32>):
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "arith.constant"() <{value = 4 : index}> : () -> index
    %6 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    "scf.for"(%3, %5, %4) ({
    ^bb0(%arg3: index):
      %7 = "memref.load"(%arg1, %arg3) : (memref<?xf32>, index) -> f32
      %8 = "arith.addf"(%7, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "memref.store"(%8, %arg2, %arg3) : (f32, memref<?xf32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addf"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_parent_op"(%0) <{nth_parent = 1 : i64, op_name = "scf.for"}> : (!transform.any_op) -> !transform.op<"scf.for">
      %2 = "transform.loop.pipeline"(%1) <{iteration_interval = 1 : i64, read_latency = 10 : i64}> : (!transform.op<"scf.for">) -> !transform.any_op
      "transform.debug.emit_remark_at"(%2) <{message = "transformed"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

