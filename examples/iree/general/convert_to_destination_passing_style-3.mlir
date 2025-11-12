#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "convert_forall"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<64xi32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64xi32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 64>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<64xi32>>) -> tensor<64xi32>
    %4 = "tensor.empty"() : () -> tensor<64xi32>
    %5 = "scf.forall"(%4) <{mapping = [#iree_codegen.workgroup_mapping<x>], operandSegmentSizes = array<i32: 0, 0, 0, 1>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 16>, staticUpperBound = array<i64: 64>}> ({
    ^bb0(%arg0: index, %arg1: tensor<64xi32>):
      %6 = "tensor.extract_slice"(%arg1, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<64xi32>, index) -> tensor<16xi32>
      %7 = "tensor.extract_slice"(%3, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<64xi32>, index) -> tensor<16xi32>
      %8 = "linalg.add"(%7, %7, %6) <{operandSegmentSizes = array<i32: 2, 1>}> ({
      ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
        %9 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "linalg.yield"(%9) : (i32) -> ()
      }) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.forall.in_parallel"() ({
        "tensor.parallel_insert_slice"(%8, %arg1, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xi32>, tensor<64xi32>, index) -> ()
      }) : () -> ()
    }) : (tensor<64xi32>) -> tensor<64xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 64>, static_strides = array<i64: 1>}> : (tensor<64xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<64xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

