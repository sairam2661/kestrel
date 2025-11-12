#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["foo"]}> ({
      ^bb0(%arg1: !hal.device):
        %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "hal.return"(%1) : (i32) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["bar"]}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "hal.return"(%0) : (i32) -> ()
      }) : () -> ()
      "builtin.module"() ({
        "llvm.mlir.global"() <{addr_space = 4 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "__constant_ordinal_foo_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) {hal.executable.constant.key = "foo", sym_visibility = "private"} : () -> ()
        "llvm.mlir.global"() <{addr_space = 4 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "__constant_ordinal_foo_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) {hal.executable.constant.key = "foo", sym_visibility = "private"} : () -> ()
        "llvm.mlir.global"() <{addr_space = 4 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "__constant_ordinal_bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) {hal.executable.constant.key = "bar", sym_visibility = "private"} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

