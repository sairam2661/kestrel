"builtin.module"() ({
  "llvm.comdat"() <{sym_name = "__llvm_comdat"}> ({
    "llvm.comdat_selector"() <{comdat = 0 : i64, sym_name = "foo"}> : () -> ()
  }) : () -> ()
  "llvm.comdat"() <{sym_name = "__llvm_comdat_1"}> ({
    "llvm.comdat_selector"() <{comdat = 0 : i64, sym_name = "foo"}> : () -> ()
  }) : () -> ()
}) : () -> ()

