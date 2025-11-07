"builtin.module"() ({
  "func.func"() <{function_type = (memref<1xi64>) -> memref<1xi64>, sym_name = "test_krnlregion"}> ({
  ^bb0(%arg0: memref<1xi64>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi64>
    "krnl.region"() ({
      %1 = "arith.constant"() <{value = 0 : index}> : () -> index
      %2 = "memref.load"(%arg0, %1) : (memref<1xi64>, index) -> i64
      %3 = "arith.addi"(%2, %2) : (i64, i64) -> i64
      "memref.store"(%3, %0, %1) : (i64, memref<1xi64>, index) -> ()
    }) : () -> ()
    "func.return"(%0) : (memref<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

