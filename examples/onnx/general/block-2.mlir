#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (1)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<()[s0] -> (s0)>
#map6 = affine_map<() -> (256)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x256x768xf32>) -> memref<1x256x1xf32>, sym_name = "bertsquad10_const_pattern", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<1x256x768xf32>):
    %0 = "arith.constant"() <{value = dense<7.680000e+02> : vector<4xf32>}> : () -> vector<4xf32>
    %1 = "arith.constant"() <{value = dense<0.000000e+00> : vector<4xf32>}> : () -> vector<4xf32>
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "arith.constant"() <{value = 1 : index}> : () -> index
    %6 = "arith.constant"() <{value = 256 : index}> : () -> index
    %7 = "arith.constant"() <{value = 768 : index}> : () -> index
    %8 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x256x1xf32>
    %9 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2xindex>
    "affine.store"(%5, %9) <{map = #map}> : (index, memref<2xindex>) -> ()
    "affine.store"(%6, %9) <{map = #map1}> : (index, memref<2xindex>) -> ()
    %10 = "memref.reshape"(%8, %9) : (memref<1x256x1xf32>, memref<2xindex>) -> memref<1x256xf32>
    %11 = "memref.alloca"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4x4xf32>
    %12:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    %13:2 = "krnl.block"(%12#1) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%12#0, %13#0, %12#0, %12#1) ({
    ^bb0(%arg1: index, %arg2: index):
      %14:2 = "krnl.get_induction_var_value"(%12#0, %13#0) : (!krnl.loop, !krnl.loop) -> (index, index)
      "vector.store"(%1, %11, %3, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
      "vector.store"(%1, %11, %5, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
      "vector.store"(%1, %11, %4, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
      "vector.store"(%1, %11, %2, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
      %15 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
      %16:2 = "krnl.block"(%15) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
      "krnl.iterate"(%16#0, %15, %3, %7) ({
      ^bb0(%arg3: index):
        %31 = "krnl.get_induction_var_value"(%16#0) : (!krnl.loop) -> index
        %32 = "vector.load"(%arg0, %14#0, %14#1, %31) : (memref<1x256x768xf32>, index, index, index) -> vector<4xf32>
        %33 = "vector.load"(%11, %3, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
        %34 = "arith.addf"(%33, %32) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
        "vector.store"(%34, %11, %3, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
        %35 = "affine.apply"(%14#1) <{map = #map2}> : (index) -> index
        %36 = "vector.load"(%arg0, %14#0, %35, %31) : (memref<1x256x768xf32>, index, index, index) -> vector<4xf32>
        %37 = "vector.load"(%11, %5, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
        %38 = "arith.addf"(%37, %36) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
        "vector.store"(%38, %11, %5, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
        %39 = "affine.apply"(%14#1) <{map = #map3}> : (index) -> index
        %40 = "vector.load"(%arg0, %14#0, %39, %31) : (memref<1x256x768xf32>, index, index, index) -> vector<4xf32>
        %41 = "vector.load"(%11, %4, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
        %42 = "arith.addf"(%41, %40) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
        "vector.store"(%42, %11, %4, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
        %43 = "affine.apply"(%14#1) <{map = #map4}> : (index) -> index
        %44 = "vector.load"(%arg0, %14#0, %43, %31) : (memref<1x256x768xf32>, index, index, index) -> vector<4xf32>
        %45 = "vector.load"(%11, %2, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
        %46 = "arith.addf"(%45, %44) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
        "vector.store"(%46, %11, %2, %3) : (vector<4xf32>, memref<4x4xf32>, index, index) -> ()
        "krnl.terminate"() : () -> ()
      }) {bounds = [#map5, #map5], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop, index, index) -> ()
      %17 = "vector.load"(%11, %3, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
      %18 = "vector.load"(%11, %5, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
      %19 = "vector.load"(%11, %4, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
      %20 = "vector.load"(%11, %2, %3) : (memref<4x4xf32>, index, index) -> vector<4xf32>
      %21 = "vector.shuffle"(%17, %18) <{mask = [0, 4, 1, 5]}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %22 = "vector.shuffle"(%17, %18) <{mask = [2, 6, 3, 7]}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %23 = "arith.addf"(%21, %22) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %24 = "vector.shuffle"(%19, %20) <{mask = [0, 4, 1, 5]}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %25 = "vector.shuffle"(%19, %20) <{mask = [2, 6, 3, 7]}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %26 = "arith.addf"(%24, %25) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %27 = "vector.shuffle"(%23, %26) <{mask = [0, 1, 4, 5]}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %28 = "vector.shuffle"(%23, %26) <{mask = [2, 3, 6, 7]}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %29 = "arith.addf"(%27, %28) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      %30 = "arith.divf"(%29, %0) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
      "vector.store"(%30, %10, %14#0, %14#1) : (vector<4xf32>, memref<1x256xf32>, index, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map6], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"(%8) : (memref<1x256x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

