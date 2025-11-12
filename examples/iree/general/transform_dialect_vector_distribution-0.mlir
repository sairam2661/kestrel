#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [64, 1, 1] subgroup_size = 32>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduce_dispatch_0"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128xf32>
    %3 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %4 = "arith.cmpi"(%3, %1) <{predicate = 6 : i64}> : (index, index) -> i1
    "scf.if"(%4) ({
      %5 = "some_def"() : () -> vector<128xf32>
      "vector.transfer_write"(%5, %2, %0) <{in_bounds = [false], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (vector<128xf32>, memref<128xf32>, index) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

