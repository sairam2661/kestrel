#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable.source"() <{sym_name = "executable", sym_visibility = "public"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "abs", sym_visibility = "public"}> ({
    ^bb0(%arg2: !hal.device):
      %7:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"() : () -> (index, index, index)
      "hal.return"(%7#0, %7#1, %7#2) : (index, index, index) -> ()
    }, {
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "abs"}> ({
        %0 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1 = "hal.interface.binding.subspan"(%0) <{alignment = 4 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>
        %2 = "hal.interface.binding.subspan"(%0) <{alignment = 4 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>
        %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 2>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>) -> tensor<2xf32>
        %4 = "tensor.empty"() : () -> tensor<2xf32>
        %5 = "linalg.generic"(%3, %4) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg0: f32, %arg1: f32):
          %6 = "math.absf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
          "linalg.yield"(%6) : (f32) -> ()
        }) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 2>, static_strides = array<i64: 1>}> : (tensor<2xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2xf32>>) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

