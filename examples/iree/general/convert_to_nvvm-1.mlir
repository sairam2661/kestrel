#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "abs_dynamic"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "abs_dynamic", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "abs_dynamic"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 3 : index}> : () -> index
          %2 = "arith.constant"() <{value = 5 : index}> : () -> index
          %3 = "arith.constant"() <{value = 7 : index}> : () -> index
          %4 = "arith.constant"() <{value = 32 : i64}> : () -> i64
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
          %7 = "arith.extui"(%5) : (i32) -> i64
          %8 = "arith.extui"(%6) : (i32) -> i64
          %9 = "arith.shli"(%8, %4) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
          %10 = "arith.ori"(%7, %9) : (i64, i64) -> i64
          %11 = "arith.index_castui"(%10) : (i64) -> index
          %12 = "util.assume.int"(%11) <{assumptions = [[#util.int.assumption<umin = 5185728, umax = 4438911803328>]]}> : (index) -> index
          %13 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
          %14 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
          %15 = "util.assume.int"(%14) <{assumptions = [[#util.int.assumption<umin = 0, umax = 0>, #util.int.assumption<umin = 4096, umax = 4096, udiv = 4096>]]}> : (index) -> index
          %16 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
          %17 = "hal.interface.binding.subspan"(%12, %13, %15, %16) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> memref<?x?x?xf32, strided<[?, ?, 1], offset: ?>>
          %18 = "hal.interface.binding.subspan"(%13, %15, %16) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> memref<?x?x?xi32>
          %19 = "hal.interface.binding.subspan"(%13, %15, %16) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> memref<?x?x?xf32>
          %20 = "memref.load"(%17, %1, %2, %3) : (memref<?x?x?xf32, strided<[?, ?, 1], offset: ?>>, index, index, index) -> f32
          %21 = "memref.load"(%18, %1, %2, %3) : (memref<?x?x?xi32>, index, index, index) -> i32
          %22 = "arith.sitofp"(%21) : (i32) -> f32
          %23 = "arith.addf"(%20, %22) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "memref.store"(%23, %19, %1, %2, %3) : (f32, memref<?x?x?xf32>, index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

