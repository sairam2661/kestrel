#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (3)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<3xi64>, sym_name = "shoud_not_fold_different_blocks"}> ({
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3xi64>
    "affine.for"() <{lowerBoundMap = #map, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map1}> ({
    ^bb0(%arg0: index):
      "krnl.store"(%0, %1, %arg0) : (i64, memref<3xi64>, index) -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%1) : (memref<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

