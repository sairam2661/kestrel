#map = affine_map<(d0, d1, d2) -> (d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> vector<4xf32>, sym_name = "transfer_read_subspan_with_offset"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<6x7x8xf32, strided<[56, 8, 1], offset: ?>>
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "vector.transfer_read"(%0, %arg1, %arg2, %arg3, %1) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map}> : (memref<6x7x8xf32, strided<[56, 8, 1], offset: ?>>, index, index, index, f32) -> vector<4xf32>
    "func.return"(%2) : (vector<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

