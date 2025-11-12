#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg6: !hal.device):
        %4:2 = "hal.device.query"(%arg6) <{category = "some", key = "feature"}> : (!hal.device) -> (i1, i1)
        "hal.return"(%4#1) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index):
        "hal.return"(%arg5, %arg5, %arg5) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "ex1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg3: !hal.device):
        %3:2 = "hal.device.query"(%arg3) <{category = "some", key = "feature"}> : (!hal.device) -> (i1, i1)
        "hal.return"(%3#1) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device, %arg2: index):
        "hal.return"(%arg2, %arg2, %arg2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (tensor<4xf32>) -> tensor<4xf32>, sym_name = "dispatch_variants", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "flow.dispatch"(%0, %arg0) <{entry_points = [@ex0::@variant::@dispatch], operandSegmentSizes = array<i32: 1, 1, 0, 0>, tied_operands = [-1 : index]}> : (index, tensor<4xf32>) -> tensor<4xf32>
    %2 = "flow.dispatch"(%0, %arg0) <{entry_points = [@ex1::@variant::@dispatch], operandSegmentSizes = array<i32: 1, 1, 0, 0>, tied_operands = [-1 : index]}> : (index, tensor<4xf32>) -> tensor<4xf32>
    "util.return"(%2) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

