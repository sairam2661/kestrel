#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "const_size_no_offset"}> ({
    %31 = "hal.interface.binding.subspan"() <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "const_size_zero_offset"}> ({
    %29 = "arith.constant"() <{value = 0 : index}> : () -> index
    %30 = "hal.interface.binding.subspan"(%29) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "const_size_too_big"}> ({
    %27 = "arith.constant"() <{value = 0 : index}> : () -> index
    %28 = "hal.interface.binding.subspan"(%27) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x1024x1024xf16>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "const_size_const_offset"}> ({
    %25 = "arith.constant"() <{value = 8192 : index}> : () -> index
    %26 = "hal.interface.binding.subspan"(%25) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "const_size_i32_offset"}> ({
    %22 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %23 = "arith.index_castui"(%22) : (i32) -> index
    %24 = "hal.interface.binding.subspan"(%23) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "const_size_i64_offset"}> ({
    %13 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %14 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %15 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %16 = "arith.extui"(%14) : (i32) -> i64
    %17 = "arith.extui"(%15) : (i32) -> i64
    %18 = "arith.shli"(%17, %13) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %19 = "arith.ori"(%16, %18) : (i64, i64) -> i64
    %20 = "arith.index_castui"(%19) : (i64) -> index
    %21 = "hal.interface.binding.subspan"(%20) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "const_size_nonuniform_offset_workgroup_id"}> ({
    %9 = "arith.constant"() <{value = 8192 : index}> : () -> index
    %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %11 = "arith.muli"(%10, %9) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %12 = "hal.interface.binding.subspan"(%11) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "any_dyn_size"}> ({
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %7 = "arith.index_castui"(%6) : (i32) -> index
    %8 = "hal.interface.binding.subspan"(%5, %7) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "assume_dyn_size"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "arith.index_castui"(%1) : (i32) -> index
    %3 = "util.assume.int"(%2) <{assumptions = [[#util.int.assumption<umin = 0, umax = 0>, #util.int.assumption<umin = 4, umax = 2048, udiv = 4>]]}> : (index) -> index
    %4 = "hal.interface.binding.subspan"(%0, %3) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x256xf32>>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

