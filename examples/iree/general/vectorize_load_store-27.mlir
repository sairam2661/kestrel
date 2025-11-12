#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (vector<2xi32>, vector<8xi32>), sym_name = "transfer_read_vector2_vector8"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xi32>
    %2 = "vector.transfer_read"(%1, %arg0, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (memref<2048xi32>, index, i32) -> vector<2xi32>
    %3 = "vector.transfer_read"(%1, %arg0, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (memref<2048xi32>, index, i32) -> vector<8xi32>
    "func.return"(%2, %3) : (vector<2xi32>, vector<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

