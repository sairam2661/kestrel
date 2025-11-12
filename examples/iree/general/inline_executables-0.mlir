#executable_target_vmvx_ir = #hal.executable.target<"vmvx-inline", "vmvx-ir">
#map = affine_map<()[s0] -> (s0 ceildiv 4)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vmvx_ir", sym_visibility = "public", target = #executable_target_vmvx_ir}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg19: !hal.device, %arg20: index, %arg21: index):
        %35 = "affine.apply"(%arg20) <{map = #map}> : (index) -> index
        %36 = "affine.apply"(%arg21) <{map = #map}> : (index) -> index
        %37 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%35, %36, %37) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "util.global"() <{sym_name = "global_constant", sym_visibility = "private", type = !util.buffer}> : () -> ()
        "util.initializer"() <{function_type = () -> ()}> ({
          %34 = "util.buffer.constant"() <{value = dense<[1, 2, 3, 4, 5]> : tensor<5xi32>}> : () -> !util.buffer
          "util.global.store"(%34) <{global = @global_constant}> : (!util.buffer) -> ()
          "util.return"() : () -> ()
        }) : () -> ()
        "func.func"() <{function_type = (!util.buffer, !util.buffer, !util.list<!util.buffer>, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> (), sym_name = "dispatch_0", sym_visibility = "public"}> ({
        ^bb0(%arg6: !util.buffer, %arg7: !util.buffer, %arg8: !util.list<!util.buffer>, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32):
          %12 = "arith.constant"() <{value = 4 : index}> : () -> index
          %13 = "util.buffer.size"(%arg7) : (!util.buffer) -> index
          %14 = "arith.constant"() <{value = 4 : index}> : () -> index
          %15 = "util.buffer.load"(%arg7, %13, %14, %12) : (!util.buffer, index, index, index) -> i32
          %16 = "arith.sitofp"(%15) : (i32) -> f32
          %17 = "arith.constant"() <{value = 0 : index}> : () -> index
          %18 = "util.list.get"(%arg8, %17) : (!util.list<!util.buffer>, index) -> !util.buffer
          %19 = "arith.constant"() <{value = 1 : index}> : () -> index
          %20 = "util.list.get"(%arg8, %19) : (!util.list<!util.buffer>, index) -> !util.buffer
          %21 = "arith.constant"() <{value = 2 : index}> : () -> index
          %22 = "util.list.get"(%arg8, %21) : (!util.list<!util.buffer>, index) -> !util.buffer
          %23 = "util.buffer.size"(%18) : (!util.buffer) -> index
          %24 = "util.buffer.size"(%20) : (!util.buffer) -> index
          %25 = "util.buffer.size"(%22) : (!util.buffer) -> index
          %26 = "util.global.load"() <{global = @global_constant}> : () -> !util.buffer
          %27 = "util.optimization_barrier"(%26) : (!util.buffer) -> !util.buffer
          %28 = "arith.index_cast"(%arg9) : (i32) -> index
          "scf.for"(%17, %28, %19) ({
          ^bb0(%arg18: index):
            %29 = "arith.muli"(%arg18, %12) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
            %30 = "util.buffer.load"(%18, %23, %29, %12) : (!util.buffer, index, index, index) -> f32
            %31 = "util.buffer.load"(%20, %24, %29, %12) : (!util.buffer, index, index, index) -> f32
            %32 = "arith.mulf"(%30, %31) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %33 = "arith.mulf"(%32, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "util.buffer.store"(%33, %22, %25, %29, %12) : (f32, !util.buffer, index, index, index) -> ()
            "scf.yield"() : () -> ()
          }) : (index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.global"() <{sym_name = "global_constant", sym_visibility = "private", type = i32}> : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "dispatch_0", sym_visibility = "private"}> ({
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<constant>, !stream.resource<transient>, !stream.resource<external>) -> (), sym_name = "dispatch0", sym_visibility = "private"}> ({
  ^bb0(%arg0: !stream.resource<constant>, %arg1: !stream.resource<transient>, %arg2: !stream.resource<external>):
    %0 = "arith.constant"() <{value = 1000 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1001 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 200 : index}> : () -> index
    %5 = "arith.constant"() <{value = 128 : index}> : () -> index
    %6 = "arith.constant"() <{value = 300 : index}> : () -> index
    %7 = "arith.constant"() <{value = 256 : index}> : () -> index
    %8 = "arith.constant"() <{value = 400 : index}> : () -> index
    %9 = "arith.constant"() <{value = 512 : index}> : () -> index
    %10 = "arith.constant"() <{value = 1024 : index}> : () -> index
    %11 = "stream.cmd.execute"(%arg0, %arg1, %arg2, %10, %10, %10) <{operandSegmentSizes = array<i32: 3, 3, 0>}> ({
    ^bb0(%arg3: !stream.resource<constant>, %arg4: !stream.resource<transient>, %arg5: !stream.resource<external>):
      "stream.cmd.dispatch"(%0, %1, %2, %3, %arg3, %arg4, %arg5, %10, %10, %10, %4, %6, %8, %5, %7, %9) <{entry_points = [@ex::@vmvx_ir::@dispatch_0], operandSegmentSizes = array<i32: 2, 2, 3, 3, 3, 3>, resource_accesses = [1 : i32, 1 : i32, 2 : i32]}> : (index, index, i32, i32, !stream.resource<constant>, !stream.resource<transient>, !stream.resource<external>, index, index, index, index, index, index, index, index, index) -> ()
      "stream.yield"() : () -> ()
    }) : (!stream.resource<constant>, !stream.resource<transient>, !stream.resource<external>, index, index, index) -> !stream.timepoint
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

