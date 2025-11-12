#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64">
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#map = affine_map<() -> ()>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_arm_64, #executable_target_embedded_elf_x86_64]> : !hal.device
"builtin.module"() ({
  "stream.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "stream.executable.export"() <{function_ref = @dispatch, sym_name = "dispatch", sym_visibility = "public"}> ({
      %13:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"() : () -> (index, index, index)
      "stream.return"(%13#0, %13#1, %13#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{arg_attrs = [{stream.alignment = 64 : index}, {stream.alignment = 64 : index}], function_type = (!stream.binding, !stream.binding) -> (), sym_name = "dispatch"}> ({
      ^bb0(%arg3: !stream.binding, %arg4: !stream.binding):
        %5 = "arith.constant"() <{value = 0 : index}> : () -> index
        %6 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
        %7 = "stream.binding.subspan"(%arg3, %5) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<f32>>
        %8 = "stream.binding.subspan"(%arg4, %5) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        %9 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<f32>>) -> tensor<f32>
        %10 = "tensor.empty"() : () -> tensor<f32>
        %11 = "linalg.generic"(%9, %10) <{indexing_maps = [#map, #map], iterator_types = [], operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg5: f32, %arg6: f32):
          %12 = "math.powf"(%arg5, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%12) : (f32) -> ()
        }) : (tensor<f32>, tensor<f32>) -> tensor<f32>
        "iree_tensor_ext.dispatch.tensor.store"(%11, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (tensor<f32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<external>) -> !stream.resource<external>, sym_name = "main", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "stream.resource.alloc"(%1) <{uninitialized}> : (index) -> !stream.resource<external>
    %3 = "stream.cmd.execute"(%arg0, %2, %1, %1) <{operandSegmentSizes = array<i32: 2, 2, 0>}> ({
    ^bb0(%arg1: !stream.resource<external>, %arg2: !stream.resource<external>):
      "stream.cmd.dispatch"(%arg1, %arg2, %1, %1, %0, %0, %1, %1) <{entry_points = [@executable::@dispatch], operandSegmentSizes = array<i32: 0, 0, 2, 2, 2, 2>, resource_accesses = [1 : i32, 2 : i32]}> : (!stream.resource<external>, !stream.resource<external>, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<external>, !stream.resource<external>, index, index) -> !stream.timepoint
    %4 = "stream.timepoint.await"(%2, %1, %3) <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (!stream.resource<external>, index, !stream.timepoint) -> !stream.resource<external>
    "util.return"(%4) : (!stream.resource<external>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

