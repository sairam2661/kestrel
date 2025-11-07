"builtin.module"() ({
  "func.func"() <{function_type = (memref<1xindex>) -> memref<1xi64>, sym_name = "should_not_fold_not_constant_i64"}> ({
  ^bb0(%arg0: memref<1xindex>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "krnl.load"(%arg0, %0) : (memref<1xindex>, index) -> index
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi64>
    "krnl.store"(%1, %3, %2) : (i64, memref<1xi64>, index) -> ()
    "func.return"(%3) : (memref<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

