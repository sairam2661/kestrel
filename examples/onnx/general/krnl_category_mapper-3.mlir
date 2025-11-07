#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (2)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2x!krnl.string>) -> memref<2x2xi64>, sym_name = "test_category_mapper_string_to_int64", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<2x2x!krnl.string>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x2xi64>
    %4 = "krnl.global"() {name = "G", shape = [3], value = dense<[1, 0, -3]> : tensor<3xi32>} : () -> memref<3xi32>
    %5 = "krnl.global"() {name = "V", shape = [3], value = dense<[1, 2, 0]> : tensor<3xi32>} : () -> memref<3xi32>
    %6 = "krnl.global"() {name = "cats_int64s", shape = [3], value = dense<[1, 2, 3]> : tensor<3xi64>} : () -> memref<3xi64>
    %7 = "krnl.global"() {name = "cats_strings", shape = [3], value = dense<["cat", "dog", "cow"]> : tensor<3x!krnl.string>} : () -> memref<3x!krnl.string>
    %8:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%8#0, %8#1, %8#0, %8#1) ({
    ^bb0(%arg1: index, %arg2: index):
      %9:2 = "krnl.get_induction_var_value"(%8#0, %8#1) : (!krnl.loop, !krnl.loop) -> (index, index)
      %10 = "krnl.load"(%arg0, %9#0, %9#1) : (memref<2x2x!krnl.string>, index, index) -> !krnl.string
      %11 = "krnl.find_index"(%10, %4, %5, %2) : (!krnl.string, memref<3xi32>, memref<3xi32>, i32) -> index
      %12 = "krnl.load"(%7, %11) : (memref<3x!krnl.string>, index) -> !krnl.string
      %13 = "krnl.strlen"(%12) : (!krnl.string) -> i64
      %14 = "krnl.strncmp"(%10, %12, %13) : (!krnl.string, !krnl.string, i64) -> i32
      %15 = "arith.cmpi"(%14, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      "scf.if"(%15) ({
        %16 = "krnl.load"(%6, %11) : (memref<3xi64>, index) -> i64
        "krnl.store"(%16, %3, %9#0, %9#1) : (i64, memref<2x2xi64>, index, index) -> ()
        "scf.yield"() : () -> ()
      }, {
        "krnl.store"(%1, %3, %9#0, %9#1) : (i64, memref<2x2xi64>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"(%3) : (memref<2x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

