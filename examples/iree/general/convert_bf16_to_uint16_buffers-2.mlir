#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<bf16>, index, index, memref<bf16>, index, index, memref<f32>, index, index, index, index, index, i32, i32, i32, i32) -> (), sym_name = "iree_uk_mmt4d", sym_visibility = "private"}> ({
  }) {hal.import.bitcode = true, hal.import.fields = ["processor_data"], llvm.bareptr = true} : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "mmt4d_bf16xbf16xf32"}> ({
    %0 = "arith.constant"() <{value = 32 : index}> : () -> index
    %1 = "arith.constant"() <{value = 24 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 1029 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 1 : index}> : () -> index
    %7 = "arith.constant"() <{value = 0 : index}> : () -> index
    %8 = "arith.constant"() <{value = 64 : index}> : () -> index
    %9 = "arith.constant"() <{value = 128 : index}> : () -> index
    %10 = "hal.interface.binding.subspan"(%7) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x3x8x1xbf16>
    %11 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x3x8x1xbf16, strided<[24, 8, 1, 1], offset: 32>>
    %12 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x1x8x8xf32, strided<[64, 64, 8, 1], offset: 32>>
    %13 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %14 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %15 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %16 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    "scf.for"(%15, %6, %16) ({
    ^bb0(%arg0: index):
      "scf.for"(%13, %6, %14) ({
      ^bb0(%arg1: index):
        %17:10 = "memref.extract_strided_metadata"(%10) : (memref<1x3x8x1xbf16>) -> (memref<bf16>, index, index, index, index, index, index, index, index, index)
        %18:10 = "memref.extract_strided_metadata"(%11) : (memref<1x3x8x1xbf16, strided<[24, 8, 1, 1], offset: 32>>) -> (memref<bf16>, index, index, index, index, index, index, index, index, index)
        %19:10 = "memref.extract_strided_metadata"(%12) : (memref<1x1x8x8xf32, strided<[64, 64, 8, 1], offset: 32>>) -> (memref<f32>, index, index, index, index, index, index, index, index, index)
        "func.call"(%17#0, %7, %1, %18#0, %0, %1, %19#0, %0, %8, %6, %6, %2, %3, %3, %4, %5) <{callee = @iree_uk_mmt4d}> : (memref<bf16>, index, index, memref<bf16>, index, index, memref<f32>, index, index, index, index, index, i32, i32, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

