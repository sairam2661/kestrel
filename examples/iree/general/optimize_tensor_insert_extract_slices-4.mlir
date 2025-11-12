#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu_features = "+sve", target_triple = "aarch64-none-elf"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<4x[4]xf32>, tensor<?x?xf32>, tensor<?x?xf32>, index, index) -> tensor<?x?xf32>, sym_name = "fold_insert_slice_into_transfer_write_scalable"}> ({
  ^bb0(%arg0: vector<4x[4]xf32>, %arg1: tensor<?x?xf32>, %arg2: tensor<?x?xf32>, %arg3: index, %arg4: index):
    %0 = "vector.vscale"() : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %4 = "tensor.extract_slice"(%arg1, %3) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, index) -> tensor<4x?xf32>
    %5 = "vector.transfer_write"(%arg0, %4, %1, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<4x[4]xf32>, tensor<4x?xf32>, index, index) -> tensor<4x?xf32>
    %6 = "tensor.insert_slice"(%5, %arg2, %arg3, %arg4, %3) <{operandSegmentSizes = array<i32: 1, 1, 2, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 4, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<4x?xf32>, tensor<?x?xf32>, index, index, index) -> tensor<?x?xf32>
    "func.return"(%6) : (tensor<?x?xf32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64} : () -> ()
}) : () -> ()

