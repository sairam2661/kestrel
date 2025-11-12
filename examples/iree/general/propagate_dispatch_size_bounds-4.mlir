#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<()[s0] -> (s0 ceildiv 32)>
#map1 = affine_map<()[s0] -> (s0 ceildiv 8)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dynamic_cpu", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "embedded_elf_x86_64", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dynamic_cpu", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index):
        %6 = "affine.apply"(%arg1) <{map = #map}> : (index) -> index
        %7 = "affine.apply"(%arg2) <{map = #map1}> : (index) -> index
        %8 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%6, %7, %8) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dynamic_cpu"}> ({
          %0 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %1 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
          %2 = "hal.interface.workgroup.id"() <{dimension = 2 : index}> : () -> index
          %3 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
          %4 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
          %5 = "hal.interface.workgroup.count"() <{dimension = 2 : index}> : () -> index
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

