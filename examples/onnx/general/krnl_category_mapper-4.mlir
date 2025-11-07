#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (2)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2xi64>) -> memref<2x2x!krnl.string>, sym_name = "test_category_mapper_int64_to_string", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<2x2xi64>):
    %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x2x!krnl.string>
    %2 = "krnl.global"() {name = "G", shape = [3], value = dense<[-1, 1, 0]> : tensor<3xi32>} : () -> memref<3xi32>
    %3 = "krnl.global"() {name = "V", shape = [3], value = dense<[2, 1, 0]> : tensor<3xi32>} : () -> memref<3xi32>
    %4 = "krnl.global"() {name = "cats_int64s", shape = [3], value = dense<[1, 2, 3]> : tensor<3xi64>} : () -> memref<3xi64>
    %5 = "krnl.global"() {name = "cats_strings", shape = [3], value = dense<["cat", "dog", "cow"]> : tensor<3x!krnl.string>} : () -> memref<3x!krnl.string>
    %6 = "krnl.global"() {name = "default_string", shape = [], value = dense<"none"> : tensor<!krnl.string>} : () -> memref<!krnl.string>
    %7:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%7#0, %7#1, %7#0, %7#1) ({
    ^bb0(%arg1: index, %arg2: index):
      %8:2 = "krnl.get_induction_var_value"(%7#0, %7#1) : (!krnl.loop, !krnl.loop) -> (index, index)
      %9 = "krnl.load"(%arg0, %8#0, %8#1) : (memref<2x2xi64>, index, index) -> i64
      %10 = "krnl.find_index"(%9, %2, %3, %0) : (i64, memref<3xi32>, memref<3xi32>, i32) -> index
      %11 = "krnl.load"(%4, %10) : (memref<3xi64>, index) -> i64
      %12 = "arith.cmpi"(%9, %11) <{predicate = 0 : i64}> : (i64, i64) -> i1
      "scf.if"(%12) ({
        %13 = "krnl.load"(%5, %10) : (memref<3x!krnl.string>, index) -> !krnl.string
        "krnl.store"(%13, %1, %8#0, %8#1) : (!krnl.string, memref<2x2x!krnl.string>, index, index) -> ()
        "scf.yield"() : () -> ()
      }, {
        %13 = "krnl.load"(%6) : (memref<!krnl.string>) -> !krnl.string
        "krnl.store"(%13, %1, %8#0, %8#1) : (!krnl.string, memref<2x2x!krnl.string>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"(%1) : (memref<2x2x!krnl.string>) -> ()
  }) : () -> ()
}) : () -> ()

