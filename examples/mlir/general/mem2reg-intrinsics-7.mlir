"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i40 (i8)>, linkage = #llvm.linkage<external>, sym_name = "exotic_target_memset_inline", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i40}> : (i32) -> !llvm.ptr
    "llvm.intr.memset.inline"(%1, %arg0) <{isVolatile = false, len = 5 : i64}> : (!llvm.ptr, i8) -> ()
    %2 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i40
    "llvm.return"(%2) : (i40) -> ()
  }) : () -> ()
}) : () -> ()

