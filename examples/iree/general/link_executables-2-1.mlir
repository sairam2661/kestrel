#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %12 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%12, %12, %12) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "vm.module"() <{sym_name = "module"}> ({
          "vm.rodata"() <{sym_name = "rodata_a", sym_visibility = "public", value = dense<0> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_b", sym_visibility = "public", value = dense<0> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_b_0", sym_visibility = "public", value = dense<0> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_c", sym_visibility = "public", value = dense<0> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_d", sym_visibility = "private", value = dense<0> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_e", sym_visibility = "private", value = dense<0> : tensor<1xi32>}> : () -> ()
          "vm.func"() <{function_type = () -> ()}> ({
            %6 = "vm.const.ref.rodata"() <{rodata = @rodata_a}> : () -> !vm.buffer
            %7 = "vm.const.ref.rodata"() <{rodata = @rodata_b}> : () -> !vm.buffer
            %8 = "vm.const.ref.rodata"() <{rodata = @rodata_b_0}> : () -> !vm.buffer
            %9 = "vm.const.ref.rodata"() <{rodata = @rodata_c}> : () -> !vm.buffer
            %10 = "vm.const.ref.rodata"() <{rodata = @rodata_d}> : () -> !vm.buffer
            %11 = "vm.const.ref.rodata"() <{rodata = @rodata_e}> : () -> !vm.buffer
            "vm.return"() : () -> ()
          }) {sym_name = "dispatch_0", sym_visibility = "public"} : () -> ()
          "vm.module_terminator"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_1", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %5 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%5, %5, %5) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "vm.module"() <{sym_name = "module"}> ({
          "vm.rodata"() <{sym_name = "rodata_b", sym_visibility = "private", value = dense<1> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_b_0", sym_visibility = "private", value = dense<1> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_d", sym_visibility = "private", value = dense<1> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_e", sym_visibility = "public", value = dense<1> : tensor<1xi32>}> : () -> ()
          "vm.rodata"() <{sym_name = "rodata_f", sym_visibility = "public", value = dense<1> : tensor<1xi32>}> : () -> ()
          "vm.func"() <{function_type = () -> ()}> ({
            %0 = "vm.const.ref.rodata"() <{rodata = @rodata_b}> : () -> !vm.buffer
            %1 = "vm.const.ref.rodata"() <{rodata = @rodata_b_0}> : () -> !vm.buffer
            %2 = "vm.const.ref.rodata"() <{rodata = @rodata_d}> : () -> !vm.buffer
            %3 = "vm.const.ref.rodata"() <{rodata = @rodata_e}> : () -> !vm.buffer
            %4 = "vm.const.ref.rodata"() <{rodata = @rodata_f}> : () -> !vm.buffer
            "vm.return"() : () -> ()
          }) {sym_name = "dispatch_1", sym_visibility = "public"} : () -> ()
          "vm.module_terminator"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

