#map = affine_map<(d0, d1, d2, d3) -> (d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xf32>, index, index) -> (), sym_name = "scalarize_non_minor_identity_transfer_write"}> ({
  ^bb0(%arg0: vector<4xf32>, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<1x130x130x64xf32>
    "vector.transfer_write"(%arg0, %1, %0, %arg1, %arg2, %0) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 4, 0>, permutation_map = #map}> : (vector<4xf32>, memref<1x130x130x64xf32>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

