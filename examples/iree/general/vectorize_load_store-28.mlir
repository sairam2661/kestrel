#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, vector<2xi32>, vector<8xi32>) -> (), sym_name = "transfer_write_vector2_vector8"}> ({
  ^bb0(%arg0: index, %arg1: vector<2xi32>, %arg2: vector<8xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2048xi32>
    "vector.transfer_write"(%arg1, %1, %arg0) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (vector<2xi32>, memref<2048xi32>, index) -> ()
    "vector.transfer_write"(%arg2, %1, %arg0) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (vector<8xi32>, memref<2048xi32>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

