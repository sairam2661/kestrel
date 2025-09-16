"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "memset_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    "llvm.intr.memset"(%1, %arg0, %2) <{isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %3 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

