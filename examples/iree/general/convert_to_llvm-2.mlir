#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "interleave_and_bitcast_lowering"}> ({
    %0 = "arith.constant"() <{value = dense<4> : vector<4x2xi8>}> : () -> vector<4x2xi8>
    %1 = "arith.constant"() <{value = dense<0> : vector<4x4xi4>}> : () -> vector<4x4xi4>
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %7 = "arith.constant"() <{value = 8192 : index}> : () -> index
    %8 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128xi8, strided<[1], offset: ?>>
    %9 = "hal.interface.binding.subspan"(%7) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256x64xi4, strided<[64, 1], offset: 8192>>
    %10 = "vector.load"(%8, %2) : (memref<128xi8, strided<[1], offset: ?>>, index) -> vector<2xi8>
    %11 = "vector.bitcast"(%10) : (vector<2xi8>) -> vector<4xi4>
    %12 = "vector.insert"(%11, %1) <{static_position = array<i64: 3>}> : (vector<4xi4>, vector<4x4xi4>) -> vector<4x4xi4>
    %13 = "vector.bitcast"(%12) : (vector<4x4xi4>) -> vector<4x2xi8>
    %14 = "arith.shli"(%13, %0) <{overflowFlags = #arith.overflow<none>}> : (vector<4x2xi8>, vector<4x2xi8>) -> vector<4x2xi8>
    %15 = "arith.shrsi"(%14, %0) : (vector<4x2xi8>, vector<4x2xi8>) -> vector<4x2xi8>
    %16 = "arith.shrsi"(%13, %0) : (vector<4x2xi8>, vector<4x2xi8>) -> vector<4x2xi8>
    %17 = "vector.interleave"(%15, %16) : (vector<4x2xi8>, vector<4x2xi8>) -> vector<4x4xi8>
    %18 = "vector.bitcast"(%17) : (vector<4x4xi8>) -> vector<4x8xi4>
    "vector.store"(%18, %9, %2, %2) : (vector<4x8xi4>, memref<256x64xi4, strided<[64, 1], offset: 8192>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

