#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.default_tuning_spec = #rocm.builtin.tuning_module<"iree_default_tuning_spec_gfx942.mlir">}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d5, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d5)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> ()>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "attention", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device):
        %3:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%3#0, %3#1, %3#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = (tensor<2x10x4096x64xf16>, tensor<2x10x64x64xf16>, tensor<2x10x64x64xf16>) -> tensor<2x10x4096x64xf16>, sym_name = "attention_2x10x4096x64x64x64_f16"}> ({
        ^bb0(%arg0: tensor<2x10x4096x64xf16>, %arg1: tensor<2x10x64x64xf16>, %arg2: tensor<2x10x64x64xf16>):
          %0 = "arith.constant"() <{value = 1.250000e-01 : f16}> : () -> f16
          %1 = "tensor.empty"() : () -> tensor<2x10x4096x64xf16>
          %2 = "iree_linalg_ext.attention"(%arg0, %arg1, %arg2, %0, %1) <{indexing_maps = [#map, #map1, #map2, #map3, #map4]}> ({
          ^bb0(%arg3: f32):
            "iree_linalg_ext.yield"(%arg3) : (f32) -> ()
          }) : (tensor<2x10x4096x64xf16>, tensor<2x10x64x64xf16>, tensor<2x10x64x64xf16>, f16, tensor<2x10x4096x64xf16>) -> tensor<2x10x4096x64xf16>
          "func.return"(%2) : (tensor<2x10x4096x64xf16>) -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

