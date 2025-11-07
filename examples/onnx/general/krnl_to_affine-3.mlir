#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x10xf32>, memref<10x?xf32>) -> memref<10x10xf32>, sym_name = "test_krnl_store_with_krnl_iterate"}> ({
  ^bb0(%arg0: memref<10x10xf32>, %arg1: memref<10x?xf32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "memref.dim"(%arg1, %2) : (memref<10x?xf32>, index) -> index
    %4:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%4#0, %4#1, %4#0, %4#1) ({
    ^bb0(%arg2: index, %arg3: index):
      %5 = "krnl.load"(%arg0, %arg2, %arg3) : (memref<10x10xf32>, index, index) -> f32
      %6 = "arith.cmpi"(%3, %2) <{predicate = 4 : i64}> : (index, index) -> i1
      %7 = "arith.select"(%6, %arg3, %1) : (i1, index, index) -> index
      %8 = "krnl.load"(%arg1, %arg2, %7) : (memref<10x?xf32>, index, index) -> f32
      %9 = "arith.addf"(%5, %8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "krnl.store"(%9, %0, %arg2, %7) : (f32, memref<10x10xf32>, index, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"(%0) : (memref<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

