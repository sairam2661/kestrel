#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_embedded_elf_x86_64}> ({
      "builtin.module"() ({
        "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "__import_ordinal_foo_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) {hal.executable.import.key = "foo"} : () -> ()
        "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "__import_ordinal_foo_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) {hal.executable.import.key = "foo"} : () -> ()
        "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "__import_ordinal_bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) {hal.executable.import.key = "bar", hal.executable.import.weak} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

