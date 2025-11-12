#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree.spirv.features = ["vulkan-spirv"]}>
#executable_target_vulkan_spirv_fb1 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree.spirv.features = ["vulkan-spirv", "subgroup=1"]}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["foo"]}> ({
      ^bb0(%arg7: !hal.device):
        %30 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "hal.return"(%30) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device):
        %29 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%29, %29, %29) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "dispatch_0"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @dispatch_0, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @dispatch_0, values = [32 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv", target = #executable_target_vulkan_spirv_fb1}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg5: !hal.device):
        %23:2 = "hal.device.query"(%arg5) <{category = "hal.dispatch", default_value = 0 : i32, key = "subgroup"}> : (!hal.device) -> (i1, i32)
        %24 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %25 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %26 = "arith.andi"(%23#1, %25) : (i32, i32) -> i32
        %27 = "arith.cmpi"(%26, %24) <{predicate = 1 : i64}> : (i32, i32) -> i1
        %28 = "arith.andi"(%23#0, %27) : (i1, i1) -> i1
        "hal.return"(%28) : (i1) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["baz"]}> ({
      ^bb0(%arg4: !hal.device):
        %22 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        "hal.return"(%22) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_1", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %21 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%21, %21, %21) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "dispatch_1"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @dispatch_1, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @dispatch_1, values = [4 : i32, 8 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_2", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_2", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device):
        %20 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%20, %20, %20) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "dispatch_2"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @dispatch_2, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @dispatch_2, values = [8 : i32, 8 : i32, 2 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_3", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv", target = #executable_target_vulkan_spirv_fb1}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg1: !hal.device):
        %14:2 = "hal.device.query"(%arg1) <{category = "hal.dispatch", default_value = 0 : i32, key = "subgroup"}> : (!hal.device) -> (i1, i32)
        %15 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %16 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %17 = "arith.andi"(%14#1, %16) : (i32, i32) -> i32
        %18 = "arith.cmpi"(%17, %15) <{predicate = 1 : i64}> : (i32, i32) -> i1
        %19 = "arith.andi"(%14#0, %18) : (i1, i1) -> i1
        "hal.return"(%19) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_3", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %13 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%13, %13, %13) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "dispatch_3"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @dispatch_3, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @dispatch_3, values = [16 : i32, 8 : i32, 2 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "two_target_environments"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.devices.get"(%0) : (index) -> !hal.device
    %2 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %3 = "hal.command_buffer.create"(%1, %2) <{command_categories = 3 : i32, modes = 1 : i32}> : (!hal.device, i64) -> !hal.command_buffer
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "hal.executable.lookup"(%1) <{executable = @dispatch_0}> : (!hal.device) -> !hal.executable
    %6 = "hal.executable.lookup"(%1) <{executable = @dispatch_1}> : (!hal.device) -> !hal.executable
    %7 = "hal.executable.lookup"(%1) <{executable = @dispatch_2}> : (!hal.device) -> !hal.executable
    %8 = "hal.executable.lookup"(%1) <{executable = @dispatch_3}> : (!hal.device) -> !hal.executable
    %9 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_0::@spirv::@dispatch_0}> : () -> index
    %10 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_1::@spirv::@dispatch_1}> : () -> index
    %11 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_2::@spirv::@dispatch_2}> : () -> index
    %12 = "hal.executable.export.ordinal"() <{entry_point = @dispatch_3::@spirv::@dispatch_3}> : () -> index
    "hal.command_buffer.dispatch"(%3, %5, %9, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%3, %6, %10, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%3, %7, %11, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "hal.command_buffer.dispatch"(%3, %8, %12, %4, %4, %4, %0, %0, %0) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

