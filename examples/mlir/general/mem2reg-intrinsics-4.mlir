"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 ()>, linkage = #llvm.linkage<external>, sym_name = "memset_one_byte_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{elem_type = i8}> : (i32) -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    "llvm.intr.memset"(%1, %2, %0) <{isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %3 = "llvm.load"(%1) <{ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

