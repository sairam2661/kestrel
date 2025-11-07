#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (32)>
#map2 = affine_map<() -> (18)>
#map3 = affine_map<() -> (20)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_kernel_substitution"}> ({
    %0:3 = "krnl.define_loops"() {num_loops = 3 : i64} : () -> (!krnl.loop, !krnl.loop, !krnl.loop)
    %1:2 = "krnl.block"(%0#0) {tile_size = 8 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %2:2 = "krnl.block"(%1#1) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %3:2 = "krnl.block"(%0#1) {tile_size = 6 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %4:2 = "krnl.block"(%3#1) {tile_size = 3 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %5:2 = "krnl.block"(%0#2) {tile_size = 5 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %6:2 = "krnl.block"(%5#1) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%1#0, %2#0, %2#1, %3#0, %4#0, %4#1, %5#0, %6#0, %6#1) {map = [0, 3, 6, 1, 4, 7, 2, 5, 8]} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%1#0, %3#0, %0#0, %0#1, %0#2) ({
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %7 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10xf32>
      "krnl.iterate"(%5#0) ({
        %8 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
        %9 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x8xf32>
        "krnl.iterate"(%2#0, %4#0, %6#0) ({
          "krnl.specialized_kernel"(%2#1, %4#1, %6#1) : (!krnl.loop, !krnl.loop, !krnl.loop) -> ()
          "krnl.terminate"() : () -> ()
        }) {bounds = [], num_optimized_loops = 3 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop) -> ()
        "memref.dealloc"(%8) : (memref<10x10xf32>) -> ()
        "memref.dealloc"(%9) : (memref<10x8xf32>) -> ()
        "krnl.terminate"() : () -> ()
      }) {bounds = [], num_optimized_loops = 1 : i64} : (!krnl.loop) -> ()
      "memref.dealloc"(%7) : (memref<10xf32>) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2, #map, #map3], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

