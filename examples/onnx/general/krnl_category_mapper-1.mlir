"builtin.module"() ({
  "func.func"() <{function_type = (!krnl.string) -> index, sym_name = "test_find_index_str", sym_visibility = "private"}> ({
  ^bb0(%arg0: !krnl.string):
    %0 = "krnl.global"() {name = "G", shape = [3], value = dense<[1, 0, -3]> : tensor<3xi32>} : () -> memref<3xi32>
    %1 = "krnl.global"() {name = "V", shape = [3], value = dense<[1, 2, 0]> : tensor<3xi32>} : () -> memref<3xi32>
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "krnl.find_index"(%arg0, %0, %1, %2) : (!krnl.string, memref<3xi32>, memref<3xi32>, i32) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

