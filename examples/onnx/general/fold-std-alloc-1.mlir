"builtin.module"() ({
  "func.func"() <{function_type = (memref<1xi64>) -> memref<1xi64>, sym_name = "should_not_fold_not_constant_value"}> ({
  ^bb0(%arg0: memref<1xi64>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "krnl.load"(%arg0, %0) : (memref<1xi64>, index) -> i64
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi64>
    "krnl.store"(%1, %2, %0) : (i64, memref<1xi64>, index) -> ()
    "func.return"(%2) : (memref<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

