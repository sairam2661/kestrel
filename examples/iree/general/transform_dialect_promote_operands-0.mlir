#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "pad_matmul_static_dispatch_0", sym_visibility = "private"}> ({
    "builtin.module"() ({
      "func.func"() <{function_type = (tensor<250x500xf32>, tensor<500x1020xf32>) -> tensor<250x1020xf32>, sym_name = "pad_matmul_static_dispatch_0"}> ({
      ^bb0(%arg1: tensor<250x500xf32>, %arg2: tensor<500x1020xf32>):
        %3 = "arith.constant"() <{value = 0 : index}> : () -> index
        %4 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<250x500xf32>>
        %5 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<500x1020xf32>>
        %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 250, 500>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<250x500xf32>>) -> tensor<250x500xf32>
        %7 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 500, 1020>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<500x1020xf32>>) -> tensor<500x1020xf32>
        %8 = "tensor.empty"() : () -> tensor<250x1020xf32>
        %9 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
        %10 = "linalg.fill"(%9, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg6: f32, %arg7: f32):
          "linalg.yield"(%arg6) : (f32) -> ()
        }) : (f32, tensor<250x1020xf32>) -> tensor<250x1020xf32>
        %11 = "linalg.matmul"(%6, %7, %10) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
          %12 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %13 = "arith.addf"(%arg5, %12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%13) : (f32) -> ()
        }) : (tensor<250x500xf32>, tensor<500x1020xf32>, tensor<250x1020xf32>) -> tensor<250x1020xf32>
        "func.return"(%11) : (tensor<250x1020xf32>) -> ()
      }) : () -> ()
    }) : () -> ()
    "builtin.module"() ({
      "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
      ^bb0(%arg0: !transform.any_op):
        %0 = "transform.structured.match"(%arg0) <{ops = ["linalg.matmul"]}> : (!transform.any_op) -> !transform.any_op
        %1:3 = "transform.iree.promote_operands"(%0) <{indices = array<i64: 0, 1>}> : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op)
        %2 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
        "transform.apply_patterns"(%2) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
          "transform.apply_patterns.iree.fold_fill_into_pad"() : () -> ()
          "transform.apply_patterns.linalg.tiling_canonicalization"() : () -> ()
          "transform.apply_patterns.scf.for_loop_canonicalization"() : () -> ()
          "transform.apply_patterns.canonicalization"() : () -> ()
        }) : (!transform.any_op) -> ()
        "transform.iree.apply_licm"(%2) : (!transform.any_op) -> ()
        "transform.apply_cse"(%2) : (!transform.any_op) -> ()
        "transform.yield"() : () -> ()
      }) : () -> ()
    }) {transform.with_named_sequence} : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

