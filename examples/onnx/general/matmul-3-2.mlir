#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (4)>
#map2 = affine_map<() -> (8)>
#map3 = affine_map<() -> (6)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x6xf32>, memref<6x8xf32>, memref<4x8xf32>, index, index, index, index, index, index) -> (), sym_name = "matmulKrnl_runtime"}> ({
  ^bb0(%arg0: memref<4x6xf32>, %arg1: memref<6x8xf32>, %arg2: memref<4x8xf32>, %arg3: index, %arg4: index, %arg5: index, %arg6: index, %arg7: index, %arg8: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1:3 = "krnl.define_loops"() {num_loops = 3 : i64} : () -> (!krnl.loop, !krnl.loop, !krnl.loop)
    %2:2 = "krnl.block"(%1#0) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %3:2 = "krnl.block"(%1#1) {tile_size = 8 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %4:2 = "krnl.block"(%1#2) {tile_size = 6 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%2#0, %2#1, %3#0, %3#1, %4#0, %4#1) {map = [0, 3, 1, 4, 2, 5]} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%2#0, %3#0, %4#0, %1#0, %1#1, %1#2) ({
    ^bb0(%arg9: index, %arg10: index, %arg11: index):
      "krnl.matmul"(%arg0, %0, %0, %arg1, %0, %0, %arg2, %0, %0, %2#1, %3#1, %4#1, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8) {operandSegmentSizes = array<i32: 1, 2, 1, 2, 1, 2, 3, 1, 1, 1, 1, 1, 1>, overcompute = false, simdize = true, unroll = false} : (memref<4x6xf32>, index, index, memref<6x8xf32>, index, index, memref<4x8xf32>, index, index, !krnl.loop, !krnl.loop, !krnl.loop, index, index, index, index, index, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2, #map, #map3], num_optimized_loops = 3 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

