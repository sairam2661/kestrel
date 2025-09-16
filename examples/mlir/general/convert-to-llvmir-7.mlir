"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "atomic_update"}> ({
    %1 = "llvm.mlir.addressof"() <{global_name = @_QFsEc}> : () -> !llvm.ptr
    "omp.atomic.update"(%1) ({
    ^bb0(%arg0: i32):
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "omp.yield"(%3) : (i32) -> ()
    }) : (!llvm.ptr) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "_QFsEc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

