"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "double_memcpy", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %3 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "llvm.alloca"(%0) <{elem_type = i32}> : (i32) -> !llvm.ptr
    %5 = "llvm.alloca"(%0) <{elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%1, %4) <{ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%5, %4, %3) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %6 = "llvm.load"(%5) <{ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

