#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> vector<4xi32>, sym_name = "scalarize_vector_load_op"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xi32>
    %2 = "vector.load"(%1, %0, %arg0) : (memref<10x10xi32>, index, index) -> vector<4xi32>
    "func.return"(%2) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

