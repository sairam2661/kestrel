"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<3xi64>, sym_name = "should_not_fold_number_of_stores_mismatch"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 7 : i64}> : () -> i64
    %3 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %4 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3xi64>
    "krnl.store"(%2, %4, %0) : (i64, memref<3xi64>, index) -> ()
    "krnl.store"(%3, %4, %1) : (i64, memref<3xi64>, index) -> ()
    "func.return"(%4) : (memref<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

