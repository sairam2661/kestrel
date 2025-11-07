#map = affine_map<(d0) -> (d0, d0)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x3xi8>) -> i8, sym_name = "main"}> ({
  ^bb0(%arg0: memref<2x3xi8>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "affine.load"(%arg0, %4) <{map = #map}> : (memref<2x3xi8>, index) -> i8
    %6 = "arith.extsi"(%5) : (i8) -> i32
    %7 = "arith.subi"(%6, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %8 = "arith.muli"(%7, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %9 = "arith.addi"(%8, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %10 = "arith.cmpi"(%8, %0) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %11 = "arith.select"(%10, %1, %2) : (i1, i32, i32) -> i32
    %12 = "arith.shrsi"(%9, %1) : (i32, i32) -> i32
    %13 = "arith.shrui"(%9, %1) : (i32, i32) -> i32
    %14 = "arith.trunci"(%12) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
    "func.return"(%14) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

