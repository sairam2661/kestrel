#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#map = affine_map<()[s0] -> (s0 ceildiv 4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index, %arg7: index):
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        %2 = "affine.apply"(%arg5) <{map = #map}> : (index) -> index
        "hal.return"(%2, %1, %1) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.device, index, index, index) -> (index, index, index), sym_name = "calculateWorkgroups", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index, %arg3: index):
    %0:3 = "hal.executable.calculate_workgroups"(%arg0, %arg1, %arg2, %arg3) <{entry_point = @ex::@variant::@dispatch}> : (!hal.device, index, index, index) -> (index, index, index)
    "util.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

