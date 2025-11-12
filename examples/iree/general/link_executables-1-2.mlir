#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree.spirv.features = ["vulkan-spirv"]}>
#executable_target_vulkan_spirv_fb1 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree.spirv.features = ["vulkan-spirv", "subgroup=1"]}>
#executable_target_vulkan_spirv_fb2 = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree.spirv.features = ["vulkan-spirv", "subgroup=2"]}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv_0", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["foo"]}> ({
      ^bb0(%arg13: !hal.device):
        %28 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "hal.return"(%28) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg12: !hal.device):
        %27 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%27, %27, %27) : (index, index, index) -> ()
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
    "hal.executable.variant"() <{sym_name = "spirv_1", target = #executable_target_vulkan_spirv_fb1}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg11: !hal.device):
        %21:2 = "hal.device.query"(%arg11) <{category = "hal.dispatch", default_value = 0 : i32, key = "subgroup"}> : (!hal.device) -> (i1, i32)
        %22 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %23 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %24 = "arith.andi"(%21#1, %23) : (i32, i32) -> i32
        %25 = "arith.cmpi"(%24, %22) <{predicate = 1 : i64}> : (i32, i32) -> i1
        %26 = "arith.andi"(%21#0, %25) : (i1, i1) -> i1
        "hal.return"(%26) : (i1) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["foo"]}> ({
      ^bb0(%arg10: !hal.device):
        %20 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        "hal.return"(%20) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device):
        %19 = "arith.constant"() <{value = 2 : index}> : () -> index
        "hal.return"(%19, %19, %19) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "dispatch_0"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @dispatch_0, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @dispatch_0, values = [64 : i32, 1 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv_0", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["baz"]}> ({
      ^bb0(%arg8: !hal.device):
        %18 = "arith.constant"() <{value = 3 : i32}> : () -> i32
        "hal.return"(%18) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_1", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device):
        %17 = "arith.constant"() <{value = 3 : index}> : () -> index
        "hal.return"(%17, %17, %17) : (index, index, index) -> ()
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
    "hal.executable.variant"() <{sym_name = "spirv_1", target = #executable_target_vulkan_spirv_fb1}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg6: !hal.device):
        %11:2 = "hal.device.query"(%arg6) <{category = "hal.dispatch", default_value = 0 : i32, key = "subgroup"}> : (!hal.device) -> (i1, i32)
        %12 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %13 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %14 = "arith.andi"(%11#1, %13) : (i32, i32) -> i32
        %15 = "arith.cmpi"(%14, %12) <{predicate = 1 : i64}> : (i32, i32) -> i1
        %16 = "arith.andi"(%11#0, %15) : (i1, i1) -> i1
        "hal.return"(%16) : (i1) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["baz"]}> ({
      ^bb0(%arg5: !hal.device):
        %10 = "arith.constant"() <{value = 4 : i32}> : () -> i32
        "hal.return"(%10) : (i32) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_1", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device):
        %9 = "arith.constant"() <{value = 4 : index}> : () -> index
        "hal.return"(%9, %9, %9) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>, vce_triple = #spirv.vce<v1.3, [Shader], []>}> ({
          "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "dispatch_1"}> ({
            "spirv.Return"() : () -> ()
          }) : () -> ()
          "spirv.EntryPoint"() <{execution_model = #spirv.execution_model<GLCompute>, fn = @dispatch_1, interface = []}> : () -> ()
          "spirv.ExecutionMode"() <{execution_mode = #spirv.execution_mode<LocalSize>, fn = @dispatch_1, values = [8 : i32, 8 : i32, 1 : i32]}> : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "dispatch_2", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "spirv", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_2", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %8 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%8, %8, %8) : (index, index, index) -> ()
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
    "hal.executable.variant"() <{sym_name = "spirv_0", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_3", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device):
        %7 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%7, %7, %7) : (index, index, index) -> ()
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
    "hal.executable.variant"() <{sym_name = "spirv_1", target = #executable_target_vulkan_spirv_fb2}> ({
      "hal.executable.condition"() <{function_type = (!hal.device) -> i1}> ({
      ^bb0(%arg1: !hal.device):
        %1:2 = "hal.device.query"(%arg1) <{category = "hal.dispatch", default_value = 0 : i32, key = "subgroup"}> : (!hal.device) -> (i1, i32)
        %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %4 = "arith.andi"(%1#1, %3) : (i32, i32) -> i32
        %5 = "arith.cmpi"(%4, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
        %6 = "arith.andi"(%1#0, %5) : (i1, i1) -> i1
        "hal.return"(%6) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_3", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %0, %0) : (index, index, index) -> ()
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
}) : () -> ()

