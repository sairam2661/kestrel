#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [32], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [65535, 65535, 65535]>>}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "emulate_1d_vector"}> ({
    %0 = "arith.constant"() <{value = 95232 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 36864 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1523712 : index}> : () -> index
    %5 = "arith.constant"() <{value = 96 : index}> : () -> index
    %6 = "hal.interface.binding.subspan"(%2, %5) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xvector<4xi32>, #spirv.storage_class<StorageBuffer>>
    %7 = "hal.interface.binding.subspan"(%4, %3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xvector<4xi32>, #spirv.storage_class<StorageBuffer>>
    %8 = "hal.interface.binding.subspan"(%2, %3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xvector<4xi32>, #spirv.storage_class<StorageBuffer>>
    %9 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %10 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %11 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %12 = "arith.muli"(%9, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %13 = "arith.addi"(%11, %12) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %14 = "memref.load"(%6, %13) : (memref<?xvector<4xi32>, #spirv.storage_class<StorageBuffer>>, index) -> vector<4xi32>
    %15 = "arith.extsi"(%14) : (vector<4xi32>) -> vector<4xi64>
    %16 = "arith.extui"(%14) : (vector<4xi32>) -> vector<4xi64>
    %17 = "arith.muli"(%15, %16) <{overflowFlags = #arith.overflow<none>}> : (vector<4xi64>, vector<4xi64>) -> vector<4xi64>
    %18 = "arith.addi"(%15, %17) <{overflowFlags = #arith.overflow<none>}> : (vector<4xi64>, vector<4xi64>) -> vector<4xi64>
    %19 = "arith.trunci"(%18) <{overflowFlags = #arith.overflow<none>}> : (vector<4xi64>) -> vector<4xi32>
    %20 = "arith.muli"(%10, %5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %21 = "arith.addi"(%13, %20) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %22 = "arith.addi"(%21, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "memref.store"(%19, %8, %22) : (vector<4xi32>, memref<?xvector<4xi32>, #spirv.storage_class<StorageBuffer>>, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vulkan_spirv_fb} : () -> ()
}) : () -> ()

