#map = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "transpose_mask"}> ({
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<4x2xi1>
    %4 = "vector.create_mask"(%0, %1) : (index, index) -> vector<2x4xi1>
    %5 = "vector.transpose"(%4) <{permutation = array<i64: 1, 0>}> : (vector<2x4xi1>) -> vector<4x2xi1>
    "vector.transfer_write"(%5, %3, %2, %2) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<4x2xi1>, memref<4x2xi1>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

