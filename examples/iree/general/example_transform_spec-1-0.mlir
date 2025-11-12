#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<()[s0] -> (s0 ceildiv 64)>
#map1 = affine_map<()[s0] -> (s0 * 64)>
#map2 = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{objects = [#hal.executable.object<{path = "samples/custom_dispatch/cpu/embedded/functions_x86_64.o"}>], sym_name = "x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "simple_mul_abs_negate", sym_visibility = "public"}> ({
      ^bb0(%arg16: !hal.device, %arg17: index):
        %29 = "affine.apply"(%arg17) <{map = #map}> : (index) -> index
        %30 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%29, %30, %30) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = (memref<?xf32>, memref<?xf32>, memref<?xf32>, index, index) -> (), sym_name = "simple_mul_abs_negate_workgroup", sym_visibility = "private"}> ({
        }) {hal.import.static} : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "simple_mul_abs_negate"}> ({
          %21 = "arith.constant"() <{value = 0 : index}> : () -> index
          %22 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %23 = "arith.index_castui"(%22) : (i32) -> index
          %24 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %25 = "affine.apply"(%24) <{map = #map1}> : (index) -> index
          %26 = "hal.interface.binding.subspan"(%21, %23) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          %27 = "hal.interface.binding.subspan"(%21, %23) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          %28 = "hal.interface.binding.subspan"(%21, %23) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xf32>
          "func.call"(%26, %27, %28, %23, %25) <{callee = @simple_mul_abs_negate_workgroup}> : (memref<?xf32>, memref<?xf32>, memref<?xf32>, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "call_mul_abs_negate", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg14: tensor<?xf32>, %arg15: tensor<?xf32>):
    %17 = "arith.constant"() <{value = 0 : index}> : () -> index
    %18 = "tensor.dim"(%arg14, %17) : (tensor<?xf32>, index) -> index
    %19 = "arith.index_cast"(%18) : (index) -> i32
    %20 = "flow.dispatch"(%18, %19, %arg14, %arg15, %18, %18, %18) <{entry_points = [@executable::@x86_64::@simple_mul_abs_negate], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [-1 : index]}> : (index, i32, tensor<?xf32>, tensor<?xf32>, index, index, index) -> tensor<?xf32>
    "util.return"(%20) : (tensor<?xf32>) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (!transform.any_value, !transform.any_value), sym_name = "match_mul_abs_negate"}> ({
  ^bb0(%arg4: !transform.any_op):
    %7:2 = "transform.iree.match.cast_compatible_dag_from_root"(%arg4) ({
    ^bb0(%arg5: tensor<?xf32>, %arg6: tensor<?xf32>):
      %8 = "arith.constant"() <{value = 0 : index}> : () -> index
      %9 = "tensor.dim"(%arg5, %8) : (tensor<?xf32>, index) -> index
      %10 = "tensor.empty"(%9) {match.operation_name_only} : (index) -> tensor<?xf32>
      %11 = "linalg.generic"(%arg5, %arg6, %10) <{indexing_maps = [#map2, #map2, #map2], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
      ^bb0(%arg11: f32, %arg12: f32, %arg13: f32):
        %16 = "arith.mulf"(%arg11, %arg12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        "linalg.yield"(%16) : (f32) -> ()
      }) : (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
      %12 = "linalg.generic"(%11, %10) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg9: f32, %arg10: f32):
        %15 = "math.absf"(%arg9) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
        "linalg.yield"(%15) : (f32) -> ()
      }) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
      %13 = "linalg.generic"(%12, %10) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg7: f32, %arg8: f32):
        %14 = "arith.negf"(%arg7) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
        "linalg.yield"(%14) : (f32) -> ()
      }) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
      "transform.yield"() : () -> ()
    }) : (!transform.any_op) -> (!transform.any_value, !transform.any_value)
    "transform.yield"(%7#0, %7#1) : (!transform.any_value, !transform.any_value) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}, {transform.readonly}], function_type = (!transform.any_value, !transform.any_value) -> (), sym_name = "cast_and_call_dag"}> ({
  ^bb0(%arg2: !transform.any_value, %arg3: !transform.any_value):
    %2 = "transform.get_defining_op"(%arg3) : (!transform.any_value) -> !transform.any_op
    %3 = "transform.util.get_nearest_symbol_table"(%2) : (!transform.any_op) -> !transform.any_op
    %4 = "transform.util.import_symbol"(%3) <{if_undefined, symbol = @executable}> : (!transform.any_op) -> !transform.any_op
    %5 = "transform.util.import_symbol"(%3) <{if_undefined, symbol = @call_mul_abs_negate}> : (!transform.any_op) -> !transform.any_op
    %6 = "transform.util.cast_and_call"(%2, %arg2, %arg3, %5) <{insert_after, operandSegmentSizes = array<i32: 1, 1, 1, 1>}> ({
      "transform.type_conversion.tensor.cast_shape_dynamic_dims"() : () -> ()
    }) : (!transform.any_op, !transform.any_value, !transform.any_value, !transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["util.func"]}> : (!transform.any_op) -> !transform.any_op
    "transform.foreach"(%0) ({
    ^bb0(%arg1: !transform.any_op):
      %1 = "transform.foreach_match"(%arg1) <{actions = [@cast_and_call_dag], matchers = [@match_mul_abs_negate]}> : (!transform.any_op) -> !transform.any_op
      "transform.yield"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.apply_dce"(%arg0) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

