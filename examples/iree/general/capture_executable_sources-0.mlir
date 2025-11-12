#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = CPUDefault>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant0", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch0", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index, %arg7: index):
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%1, %1, %1) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch0"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "ex1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant1", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch1", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index, %arg3: index):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %0, %0) : (index, index, index) -> ()
      }, {
      }) {translation_info = #translation} : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch1"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

