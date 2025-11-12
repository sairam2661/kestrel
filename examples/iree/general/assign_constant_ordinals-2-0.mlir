#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_vmvx_bytecode_fb}> ({
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
        "vm.module"() <{sym_name = "inner"}> ({
          "vm.global.i32"() <{is_mutable, sym_name = "__constant_ordinal_foo_a", sym_visibility = "private", type = i32}> {hal.executable.constant.key = "foo"} : () -> ()
          "vm.global.i32"() <{is_mutable, sym_name = "__constant_ordinal_foo_b", sym_visibility = "private", type = i32}> {hal.executable.constant.key = "foo"} : () -> ()
          "vm.global.i32"() <{is_mutable, sym_name = "__constant_ordinal_bar", sym_visibility = "private", type = i32}> {hal.executable.constant.key = "bar"} : () -> ()
          "vm.module_terminator"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

