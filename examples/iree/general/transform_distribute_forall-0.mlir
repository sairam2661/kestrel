#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = TransformDialectCodegen, {config_test = "config_test"}>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "distribute"}> ({
    %2 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1xf16>}> : () -> vector<1xf16>
    %3 = "arith.constant"() <{value = 250 : index}> : () -> index
    %4 = "arith.constant"() <{value = 8 : index}> : () -> index
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    %6 = "hal.interface.binding.subspan"(%5) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2xf16>
    %7 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %8 = "memref.subview"(%6, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (memref<2xf16>, index) -> memref<1xf16, strided<[1], offset: ?>>
    "scf.forall"(%3) <{mapping = [#gpu.thread<x>], operandSegmentSizes = array<i32: 0, 1, 0, 0>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
    ^bb0(%arg2: index):
      "vector.transfer_write"(%2, %8, %arg2) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (vector<1xf16>, memref<1xf16, strided<[1], offset: ?>>, index) -> ()
      "scf.forall.in_parallel"() ({
      ^bb0:
      }) : () -> ()
    }) : (index) -> ()
    "scf.forall"(%4) <{mapping = [#gpu.warp<x>], operandSegmentSizes = array<i32: 0, 1, 0, 0>, staticLowerBound = array<i64: 0>, staticStep = array<i64: 1>, staticUpperBound = array<i64: -9223372036854775808>}> ({
    ^bb0(%arg1: index):
      "vector.transfer_write"(%2, %8, %arg1) <{in_bounds = [true], operandSegmentSizes = array<i32: 1, 1, 1, 0>, permutation_map = #map}> : (vector<1xf16>, memref<1xf16, strided<[1], offset: ?>>, index) -> ()
      "scf.forall.in_parallel"() ({
      ^bb0:
      }) : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_cuda_nvptx_fb, translation_info = #translation} : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      "transform.iree.map_nested_forall_to_gpu_threads"(%0) <{subgroup_size = 32 : i64, workgroup_dims = array<i64: 256, 1, 1>}> : (!transform.any_op) -> ()
      %1 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      "transform.apply_patterns"(%1) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
        "transform.apply_patterns.canonicalization"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.iree.apply_licm"(%1) : (!transform.any_op) -> ()
      "transform.apply_cse"(%1) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

