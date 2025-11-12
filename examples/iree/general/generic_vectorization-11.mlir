#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu_features = "+sve", target_triple = "aarch64-none-elf"}>
#map = affine_map<()[s0] -> (-(100 mod s0) + 100)>
#map1 = affine_map<(d0) -> (-d0 + 100)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x67x120x100xf32>) -> tensor<1x67x120x100xf32>, sym_name = "dynamic_fill_with_scalable_tiling_infer_remainder_vector_size"}> ({
  ^bb0(%arg0: tensor<1x67x120x100xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 100 : index}> : () -> index
    %4 = "arith.constant"() <{value = 67 : index}> : () -> index
    %5 = "arith.constant"() <{value = 120 : index}> : () -> index
    %6 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %7 = "vector.vscale"() : () -> index
    %8 = "arith.muli"(%7, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %9 = "scf.for"(%0, %4, %1, %arg0) ({
    ^bb0(%arg1: index, %arg2: tensor<1x67x120x100xf32>):
      %10 = "scf.for"(%0, %5, %2, %arg2) ({
      ^bb0(%arg3: index, %arg4: tensor<1x67x120x100xf32>):
        %11 = "affine.apply"(%8) <{map = #map}> : (index) -> index
        %12 = "scf.for"(%11, %3, %8, %arg4) ({
        ^bb0(%arg5: index, %arg6: tensor<1x67x120x100xf32>):
          %13 = "affine.apply"(%arg5) <{map = #map1}> : (index) -> index
          %14 = "tensor.extract_slice"(%arg6, %arg1, %arg3, %arg5, %13) <{operandSegmentSizes = array<i32: 1, 3, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 4, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x67x120x100xf32>, index, index, index, index) -> tensor<1x1x4x?xf32>
          %15 = "linalg.fill"(%6, %14) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f32, %arg8: f32):
            "linalg.yield"(%arg7) : (f32) -> ()
          }) : (f32, tensor<1x1x4x?xf32>) -> tensor<1x1x4x?xf32>
          %16 = "tensor.insert_slice"(%15, %arg6, %arg1, %arg3, %arg5, %13) <{operandSegmentSizes = array<i32: 1, 1, 3, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1, 4, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x1x4x?xf32>, tensor<1x67x120x100xf32>, index, index, index, index) -> tensor<1x67x120x100xf32>
          "scf.yield"(%16) : (tensor<1x67x120x100xf32>) -> ()
        }) : (index, index, index, tensor<1x67x120x100xf32>) -> tensor<1x67x120x100xf32>
        "scf.yield"(%12) : (tensor<1x67x120x100xf32>) -> ()
      }) : (index, index, index, tensor<1x67x120x100xf32>) -> tensor<1x67x120x100xf32>
      "scf.yield"(%10) : (tensor<1x67x120x100xf32>) -> ()
    }) : (index, index, index, tensor<1x67x120x100xf32>) -> tensor<1x67x120x100xf32>
    "func.return"(%9) : (tensor<1x67x120x100xf32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64} : () -> ()
}) : () -> ()

