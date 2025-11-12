#executable_target_embedded_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-riscv_64", {cpu_features = "+m,+a,+f,+d,+c,+zvl512b,+zve32f", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128", native_vector_size = 512 : index, target_triple = "riscv64-none-elf"}>
#map = affine_map<()[s0] -> (s0 ceildiv 2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "apply_scale_zve32f", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "embedded_elf_riscv_64", sym_visibility = "public", target = #executable_target_embedded_elf_riscv_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "apply_scale_zve32f", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index, %arg3: index):
        %7 = "arith.constant"() <{value = 1 : index}> : () -> index
        %8 = "affine.apply"(%arg1) <{map = #map}> : (index) -> index
        "hal.return"(%8, %7, %7) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "apply_scale_zve32f"}> ({
          %0 = "arith.constant"() <{value = dense<19689> : vector<2xi32>}> : () -> vector<2xi32>
          %1 = "arith.constant"() <{value = dense<15> : vector<2xi8>}> : () -> vector<2xi8>
          %2 = "arith.constant"() <{value = 0 : index}> : () -> index
          %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2xi32>
          %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2xi32>
          %5 = "vector.load"(%3, %2) : (memref<2xi32>, index) -> vector<2xi32>
          %6 = "tosa.apply_scale"(%5, %0, %1) <{rounding_mode = #tosa.rounding_mode<SINGLE_ROUND>}> : (vector<2xi32>, vector<2xi32>, vector<2xi8>) -> vector<2xi32>
          "vector.store"(%6, %4, %2) : (vector<2xi32>, memref<2xi32>, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

