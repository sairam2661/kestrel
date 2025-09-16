"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i10 ()>, linkage = #llvm.linkage<external>, sym_name = "only_byte_aligned_integers_memset_inline", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i10}> : (i32) -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%1, %2) <{isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    %3 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i10
    "llvm.return"(%3) : (i10) -> ()
  }) : () -> ()
}) : () -> ()

