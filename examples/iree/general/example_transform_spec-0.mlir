#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.3,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  shuffle|arithmetic, subgroup_size_choices = [64, 64], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?xf32>) -> tensor<1xi64>, sym_name = "argmax_1d_f32_entry_point", sym_visibility = "private"}> ({
  ^bb0(%arg11: tensor<1x?xf32>):
    %22 = "arith.constant"() <{value = 1 : index}> : () -> index
    %23 = "tensor.dim"(%arg11, %22) : (tensor<1x?xf32>, index) -> index
    %24 = "arith.index_cast"(%23) : (index) -> i32
    %25 = "hal.dispatch.extern"(%23, %24, %arg11, %23) <{export_name = "main", layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2, 1, 0>, target_objects = [[#hal.executable.object<{path = "samples/custom_dispatch/vulkan/shaders/one_workgroup_argmax_subgroup_f32.spv"}>]], target_ordinals = [0 : index], targets = [#executable_target_vulkan_spirv_fb], tied_operands = [-1 : index]}> ({
    ^bb0(%arg12: !hal.device, %arg13: index):
      %26 = "arith.constant"() <{value = 1 : index}> : () -> index
      "hal.return"(%26, %26, %26) : (index, index, index) -> ()
    }, {
    }) : (index, i32, tensor<1x?xf32>, index) -> tensor<1xi64>
    "func.return"(%25) : (tensor<1xi64>) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "match_argmax"}> ({
  ^bb0(%arg3: !transform.any_op):
    "transform.match.operation_name"(%arg3) <{op_names = ["linalg.generic"]}> : (!transform.any_op) -> ()
    %7 = "transform.match.structured"(%arg3) <{failure_propagation_mode = 1 : i32}> ({
    ^bb0(%arg10: !transform.any_op):
      %17 = "transform.param.constant"() <{value = 2 : i64}> : () -> !transform.param<i64>
      %18 = "transform.match.structured.rank"(%arg10) : (!transform.any_op) -> !transform.param<i64>
      "transform.match.param.cmpi"(%18, %17) <{predicate = 0 : i32}> : (!transform.param<i64>, !transform.param<i64>) -> ()
      "transform.match.structured.dim"(%arg10) <{parallel, raw_dim_list = array<i64: 0>}> : (!transform.any_op) -> ()
      "transform.match.structured.dim"(%arg10) <{raw_dim_list = array<i64: -1>, reduction}> : (!transform.any_op) -> ()
      %19 = "transform.param.constant"() <{value = 1 : i64}> : () -> !transform.param<i64>
      %20 = "transform.match.structured.num_inputs"(%arg10) : (!transform.any_op) -> !transform.param<i64>
      "transform.match.param.cmpi"(%20, %19) <{predicate = 0 : i32}> : (!transform.param<i64>, !transform.param<i64>) -> ()
      %21 = "transform.match.structured.num_inits"(%arg10) : (!transform.any_op) -> !transform.param<i64>
      "transform.match.param.cmpi"(%21, %17) <{predicate = 0 : i32}> : (!transform.param<i64>, !transform.param<i64>) -> ()
      "transform.match.structured.yield"(%arg10) : (!transform.any_op) -> ()
    }) : (!transform.any_op) -> !transform.any_op
    %8 = "transform.get_operand"(%7) <{raw_position_list = array<i64: 0>}> : (!transform.any_op) -> !transform.any_value
    "transform.iree.match.cast_compatible_type"(%8) <{target_type = tensor<1x?xf32>}> : (!transform.any_value) -> ()
    "transform.iree.match.dim_is_multiple_of"(%8) <{dim = 1 : i64, size = 64 : i64}> : (!transform.any_value) -> ()
    %9 = "transform.get_operand"(%7) <{raw_position_list = array<i64: 1>}> : (!transform.any_op) -> !transform.any_value
    "transform.iree.match.cast_compatible_type"(%9) <{target_type = tensor<1xf32>}> : (!transform.any_value) -> ()
    %10 = "transform.get_operand"(%7) <{raw_position_list = array<i64: 2>}> : (!transform.any_op) -> !transform.any_value
    "transform.iree.match.cast_compatible_type"(%10) <{target_type = tensor<1xi64>}> : (!transform.any_value) -> ()
    "transform.iree.match.regions"(%7) ({
    ^bb0(%arg4: tensor<1x?xf32>, %arg5: tensor<1xf32>, %arg6: tensor<1xi64>):
      %11:2 = "linalg.generic"(%arg4, %arg5, %arg6) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 2>}> ({
      ^bb0(%arg7: f32, %arg8: f32, %arg9: i64):
        %12 = "linalg.index"() <{dim = 1 : i64}> : () -> index
        %13 = "arith.index_cast"(%12) : (index) -> i64
        %14 = "arith.maximumf"(%arg7, %arg8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        %15 = "arith.cmpf"(%arg7, %arg8) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
        %16 = "arith.select"(%15, %13, %arg9) : (i1, i64, i64) -> i64
        "linalg.yield"(%14, %16) : (f32, i64) -> ()
      }) : (tensor<1x?xf32>, tensor<1xf32>, tensor<1xi64>) -> (tensor<1xf32>, tensor<1xi64>)
      "transform.yield"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.yield"(%arg3) : (!transform.any_op) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "cast_and_call_argmax"}> ({
  ^bb0(%arg2: !transform.any_op):
    %2 = "transform.util.get_nearest_symbol_table"(%arg2) : (!transform.any_op) -> !transform.any_op
    %3 = "transform.util.import_symbol"(%2) <{symbol = @argmax_1d_f32_entry_point}> : (!transform.any_op) -> !transform.any_op
    %4 = "transform.get_operand"(%arg2) <{raw_position_list = array<i64: 0>}> : (!transform.any_op) -> !transform.any_value
    %5 = "transform.get_result"(%arg2) <{raw_position_list = array<i64: 1>}> : (!transform.any_op) -> !transform.any_value
    %6 = "transform.func.cast_and_call"(%arg2, %4, %5, %3) <{operandSegmentSizes = array<i32: 1, 1, 1, 1>}> ({
      "transform.type_conversion.tensor.cast_shape_dynamic_dims"() : () -> ()
    }) : (!transform.any_op, !transform.any_value, !transform.any_value, !transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
    "transform.foreach"(%0) ({
    ^bb0(%arg1: !transform.any_op):
      %1 = "transform.foreach_match"(%arg1) <{actions = [@cast_and_call_argmax], matchers = [@match_argmax]}> : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.apply_dce"(%arg0) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

