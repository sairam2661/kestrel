#map = affine_map<(d0) -> (d0)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<3xi64>, sym_name = "should_fold"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 7 : i64}> : () -> i64
    %4 = "arith.constant"() <{value = 8 : i64}> : () -> i64
    %5 = "arith.constant"() <{value = 9 : i64}> : () -> i64
    %6 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3xi64>
    "memref.store"(%3, %6, %0) : (i64, memref<3xi64>, index) -> ()
    "affine.store"(%4, %6, %1) <{map = #map}> : (i64, memref<3xi64>, index) -> ()
    "krnl.store"(%5, %6, %2) : (i64, memref<3xi64>, index) -> ()
    "func.return"(%6) : (memref<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

