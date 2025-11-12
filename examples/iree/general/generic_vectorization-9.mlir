#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu_features = "+sve", target_triple = "aarch64-none-elf"}>
#map = affine_map<()[s0] -> (-(176 mod s0) + 176)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x67x120x176xf32>) -> tensor<1x67x120x176xf32>, sym_name = "dynamic_fill_with_scalable_tiling_infer_vector_size"}> ({
  ^bb0(%arg0: tensor<1x67x120x176xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 67 : index}> : () -> index
    %4 = "arith.constant"() <{value = 120 : index}> : () -> index
    %5 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %6 = "vector.vscale"() : () -> index
    %7 = "arith.muli"(%6, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %8 = "scf.for"(%0, %3, %1, %arg0) ({
    ^bb0(%arg1: index, %arg2: tensor<1x67x120x176xf32>):
      %9 = "scf.for"(%0, %4, %2, %arg2) ({
      ^bb0(%arg3: index, %arg4: tensor<1x67x120x176xf32>):
        %10 = "affine.apply"(%7) <{map = #map}> : (index) -> index
        %11 = "scf.for"(%0, %10, %7, %arg4) ({
        ^bb0(%arg5: index, %arg6: tensor<1x67x120x176xf32>):
          %12 = "tensor.extract_slice"(%arg6, %arg1, %arg3, %arg5, %7) <{operandSegmentSizes = array<i32: 1, 3, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 4, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x67x120x176xf32>, index, index, index, index) -> tensor<1x1x4x?xf32>
          %13 = "linalg.fill"(%5, %12) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f32, %arg8: f32):
            "linalg.yield"(%arg7) : (f32) -> ()
          }) : (f32, tensor<1x1x4x?xf32>) -> tensor<1x1x4x?xf32>
          %14 = "tensor.insert_slice"(%13, %arg6, %arg1, %arg3, %arg5, %7) <{operandSegmentSizes = array<i32: 1, 1, 3, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 4, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x1x4x?xf32>, tensor<1x67x120x176xf32>, index, index, index, index) -> tensor<1x67x120x176xf32>
          "scf.yield"(%14) : (tensor<1x67x120x176xf32>) -> ()
        }) : (index, index, index, tensor<1x67x120x176xf32>) -> tensor<1x67x120x176xf32>
        "scf.yield"(%11) : (tensor<1x67x120x176xf32>) -> ()
      }) : (index, index, index, tensor<1x67x120x176xf32>) -> tensor<1x67x120x176xf32>
      "scf.yield"(%9) : (tensor<1x67x120x176xf32>) -> ()
    }) : (index, index, index, tensor<1x67x120x176xf32>) -> tensor<1x67x120x176xf32>
    "func.return"(%8) : (tensor<1x67x120x176xf32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64} : () -> ()
}) : () -> ()

