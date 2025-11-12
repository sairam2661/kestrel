#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export0", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %5 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%5, %5, %5) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.mlir.global"() <{addr_space = 3 : i32, alignment = 16 : i64, global_type = !llvm.array<0 x i8>, linkage = #llvm.linkage<external>, sym_name = "__dynamic_shared_memory__", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) : () -> ()
        "llvm.mlir.global"() <{addr_space = 3 : i32, alignment = 4 : i64, global_type = !llvm.array<2 x array<64 x i32>>, linkage = #llvm.linkage<private>, sym_name = "__shared_memory__", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) : () -> ()
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i32, llvm.noalias}], function_type = !llvm.func<void (ptr<1>)>, linkage = #llvm.linkage<external>, sym_name = "export0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg2: !llvm.ptr<1>):
          %3 = "llvm.mlir.addressof"() <{global_name = @__dynamic_shared_memory__}> : () -> !llvm.ptr<3>
          %4 = "llvm.mlir.addressof"() <{global_name = @__shared_memory__}> : () -> !llvm.ptr<3>
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "executable1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export1", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %2 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%2, %2, %2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.mlir.global"() <{addr_space = 3 : i32, alignment = 16 : i64, global_type = !llvm.array<0 x i8>, linkage = #llvm.linkage<external>, sym_name = "__dynamic_shared_memory__", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) : () -> ()
        "llvm.mlir.global"() <{addr_space = 3 : i32, alignment = 4 : i64, global_type = !llvm.array<2 x array<128 x i32>>, linkage = #llvm.linkage<private>, sym_name = "__shared_memory__", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) : () -> ()
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i32, llvm.noalias}], function_type = !llvm.func<void (ptr<1>)>, linkage = #llvm.linkage<external>, sym_name = "export1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg0: !llvm.ptr<1>):
          %0 = "llvm.mlir.addressof"() <{global_name = @__dynamic_shared_memory__}> : () -> !llvm.ptr<3>
          %1 = "llvm.mlir.addressof"() <{global_name = @__shared_memory__}> : () -> !llvm.ptr<3>
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

