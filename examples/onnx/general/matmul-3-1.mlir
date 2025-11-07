#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (4)>
#map2 = affine_map<() -> (8)>
#map3 = affine_map<() -> (6)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x6xf32>, memref<6x8xf32>, memref<4x8xf32>) -> (), sym_name = "matmulKrnl_full_tiles", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<4x6xf32>, %arg1: memref<6x8xf32>, %arg2: memref<4x8xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 6 : index}> : () -> index
    %3 = "arith.constant"() <{value = 8 : index}> : () -> index
    %4:3 = "krnl.define_loops"() {num_loops = 3 : i64} : () -> (!krnl.loop, !krnl.loop, !krnl.loop)
    %5:2 = "krnl.block"(%4#0) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %6:2 = "krnl.block"(%4#1) {tile_size = 8 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %7:2 = "krnl.block"(%4#2) {tile_size = 6 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%5#0, %5#1, %6#0, %6#1, %7#0, %7#1) {map = [0, 3, 1, 4, 2, 5]} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%5#0, %6#0, %7#0, %4#0, %4#1, %4#2) ({
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      "krnl.matmul"(%arg0, %0, %0, %arg1, %0, %0, %arg2, %0, %0, %5#1, %6#1, %7#1, %0, %0, %0, %1, %3, %2) {operandSegmentSizes = array<i32: 1, 2, 1, 2, 1, 2, 3, 1, 1, 1, 1, 1, 1>, overcompute = false, simdize = true, unroll = false} : (memref<4x6xf32>, index, index, memref<6x8xf32>, index, index, memref<4x8xf32>, index, index, !krnl.loop, !krnl.loop, !krnl.loop, index, index, index, index, index, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2, #map, #map3], num_optimized_loops = 3 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

