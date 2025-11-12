#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["foo"]}> ({
      ^bb0(%arg4: !hal.device):
        %26 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "hal.return"(%26) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %25 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%25, %25, %25) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "vm.module"() <{sym_name = "module"}> ({
          "vm.func"() <{function_type = () -> ()}> ({
            "vm.return"() : () -> ()
          }) {sym_name = "dispatch_0"} : () -> ()
          "vm.export"() <{export_name = "dispatch_0", function_ref = @dispatch_0}> : () -> ()
          "vm.module_terminator"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["baz"]}> ({
      ^bb0(%arg2: !hal.device):
        %24 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        "hal.return"(%24) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_1", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %23 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%23, %23, %23) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "vm.module"() <{sym_name = "module"}> ({
          "vm.func"() <{function_type = () -> ()}> ({
            "vm.return"() : () -> ()
          }) {sym_name = "dispatch_1"} : () -> ()
          "vm.export"() <{export_name = "dispatch_1", function_ref = @dispatch_1}> : () -> ()
          "vm.module_terminator"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_2", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx", target = #executable_target_vmvx_bytecode_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_2", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %22 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%22, %22, %22) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "vm.module"() <{sym_name = "module"}> ({
          "vm.func"() <{function_type = () -> ()}> ({
            "vm.return"() : () -> ()
          }) {sym_name = "dispatch_2"} : () -> ()
          "vm.export"() <{export_name = "dispatch_2", function_ref = @dispatch_2}> : () -> ()
          "vm.module_terminator"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "basic_linking"}> ({
    %11 = "arith.constant"() <{value = 0 : index}> : () -> index
    %12 = "hal.devices.get"(%11) : (index) -> !hal.device
    %13 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %14 = "hal.command_buffer.create"(%12, %13) <{command_categories = 3 : i32, modes = 1 : i32}> {testing.op.a = @dispatch_0, testing.op.b = @dispatch_0::@vmvx, testing.op.c = @dispatch_0::@vmvx::@dispatch_0} : (!hal.device, i64) -> !hal.command_buffer
    %15 = "arith.constant"() <{value = 1 : index}> : () -> index
    %16 = "hal.executable.lookup"(%12) <{executable = @dispatch_0}> : (!hal.device) -> !hal.executable
    %17 = "hal.executable.lookup"(%12) <{executable = @dispatch_1}> : (!hal.device) -> !hal.executable
    %18 = "hal.executable.lookup"(%12) <{executable = @dispatch_2}> : (!hal.device) -> !hal.executable
    %19 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_0::@vmvx::@dispatch_0}> : () -> index
    %20 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_1::@vmvx::@dispatch_1}> : () -> index
    %21 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_2::@vmvx::@dispatch_2}> : () -> index
    "hal.command_buffer.dispatch"(%14, %16, %19, %15, %15, %15, %11, %11, %11) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%14, %17, %20, %15, %15, %15, %11, %11, %11) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%14, %18, %21, %15, %15, %15, %11, %11, %11) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {testing.func.a = @dispatch_0, testing.func.b = @dispatch_0::@vmvx, testing.func.c = @dispatch_0::@vmvx::@dispatch_0} : () -> ()
  "util.initializer"() <{function_type = () -> ()}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.devices.get"(%0) : (index) -> !hal.device
    %2 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %3 = "hal.command_buffer.create"(%1, %2) <{command_categories = 3 : i32, modes = 1 : i32}> : (!hal.device, i64) -> !hal.command_buffer
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "hal.executable.lookup"(%1) <{executable = @dispatch_0}> : (!hal.device) -> !hal.executable
    %6 = "hal.executable.lookup"(%1) <{executable = @dispatch_1}> : (!hal.device) -> !hal.executable
    %7 = "hal.executable.lookup"(%1) <{executable = @dispatch_2}> : (!hal.device) -> !hal.executable
    %8 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_0::@vmvx::@dispatch_0}> : () -> index
    %9 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_1::@vmvx::@dispatch_1}> : () -> index
    %10 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_2::@vmvx::@dispatch_2}> : () -> index
    "hal.command_buffer.dispatch"(%3, %5, %8, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%3, %6, %9, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%3, %7, %10, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

