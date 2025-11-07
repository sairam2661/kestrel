#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (10)>
#map3 = affine_map<() -> (64)>
#map4 = affine_map<() -> (1)>
#map5 = affine_map<()[s0] -> (s0 + 1)>
#map6 = affine_map<(d0) -> (d0 + 1)>
#map7 = affine_map<(d0, d1) -> (d0 + d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xindex>) -> (), sym_name = "minimal"}> ({
  ^bb0(%arg17: memref<10xindex>):
    "affine.for"() <{lowerBoundMap = #map1, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map2}> ({
    ^bb0(%arg18: index):
      "affine.store"(%arg18, %arg17, %arg18) <{map = #map}> : (index, memref<10xindex>, index) -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<64xi32>, memref<64xi32>) -> i32, sym_name = "dot"}> ({
  ^bb0(%arg13: memref<64xi32>, %arg14: memref<64xi32>):
    %23 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %24 = "affine.for"(%23) <{lowerBoundMap = #map1, operandSegmentSizes = array<i32: 0, 0, 1>, step = 1 : index, upperBoundMap = #map3}> ({
    ^bb0(%arg15: index, %arg16: i32):
      %25 = "affine.load"(%arg13, %arg15) <{map = #map}> : (memref<64xi32>, index) -> i32
      %26 = "affine.load"(%arg14, %arg15) <{map = #map}> : (memref<64xi32>, index) -> i32
      %27 = "arith.muli"(%25, %26) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %28 = "arith.addi"(%arg16, %27) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "affine.yield"(%28) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%24) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "affine_symbol"}> ({
  ^bb0(%arg10: i32):
    %18 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %19 = "arith.index_cast"(%arg10) : (i32) -> index
    %20 = "affine.for"(%19, %18) <{lowerBoundMap = #map4, operandSegmentSizes = array<i32: 0, 1, 1>, step = 1 : index, upperBoundMap = #map5}> ({
    ^bb0(%arg11: index, %arg12: i32):
      %21 = "arith.index_cast"(%arg11) : (index) -> i32
      %22 = "arith.addi"(%arg12, %21) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "affine.yield"(%22) : (i32) -> ()
    }) : (index, i32) -> i32
    "func.return"(%20) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "affine_dimension"}> ({
  ^bb0(%arg7: i32):
    %13 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %14 = "arith.index_cast"(%arg7) : (i32) -> index
    %15 = "affine.for"(%14, %13) <{lowerBoundMap = #map4, operandSegmentSizes = array<i32: 0, 1, 1>, step = 1 : index, upperBoundMap = #map6}> ({
    ^bb0(%arg8: index, %arg9: i32):
      %16 = "arith.index_cast"(%arg8) : (index) -> i32
      %17 = "arith.addi"(%arg9, %16) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "affine.yield"(%17) : (i32) -> ()
    }) : (index, i32) -> i32
    "func.return"(%15) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<64xi32>, memref<64xi32>) -> i32, sym_name = "dot_mul_accumulate"}> ({
  ^bb0(%arg3: memref<64xi32>, %arg4: memref<64xi32>):
    %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "affine.for"(%7) <{lowerBoundMap = #map1, operandSegmentSizes = array<i32: 0, 0, 1>, step = 1 : index, upperBoundMap = #map3}> ({
    ^bb0(%arg5: index, %arg6: i32):
      %9 = "affine.load"(%arg3, %arg5) <{map = #map}> : (memref<64xi32>, index) -> i32
      %10 = "affine.load"(%arg4, %arg5) <{map = #map}> : (memref<64xi32>, index) -> i32
      %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %12 = "arith.muli"(%arg6, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "affine.yield"(%12) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<128xi32>) -> i32, sym_name = "dot_shared_mem"}> ({
  ^bb0(%arg0: memref<128xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 64 : index}> : () -> index
    %2 = "affine.for"(%0) <{lowerBoundMap = #map1, operandSegmentSizes = array<i32: 0, 0, 1>, step = 1 : index, upperBoundMap = #map3}> ({
    ^bb0(%arg1: index, %arg2: i32):
      %3 = "affine.load"(%arg0, %arg1) <{map = #map}> : (memref<128xi32>, index) -> i32
      %4 = "affine.load"(%arg0, %arg1, %1) <{map = #map7}> : (memref<128xi32>, index, index) -> i32
      %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %6 = "arith.addi"(%arg2, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "affine.yield"(%6) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

