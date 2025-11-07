"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<2x4xf32>, sym_name = "return_view_of_constant"}> ({
    %0 = "krnl.global"() {name = "cst0", shape = [8], value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00]> : tensor<8xf32>} : () -> memref<8xf32>
    %1 = "memref.reinterpret_cast"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 2, 4>, static_strides = array<i64: 4, 1>}> : (memref<8xf32>) -> memref<2x4xf32>
    "func.return"(%1) : (memref<2x4xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @return_view_of_constant, numInputs = 0 : i32, numOutputs = 1 : i32, signature = ""} : () -> ()
}) : () -> ()

