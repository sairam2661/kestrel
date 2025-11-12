#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "unpack"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8x29241x16x16xf32>) -> tensor<29241x128x64xf32>, sym_name = "unpack_outer_dim_transpose"}> ({
  ^bb0(%arg0: tensor<4x8x29241x16x16xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %1 = "tensor.empty"() : () -> tensor<29241x128x64xf32>
    %2 = "linalg.unpack"(%arg0, %1) <{inner_dims_pos = array<i64: 1, 2>, outer_dims_perm = array<i64: 2, 1, 0>, static_inner_tiles = array<i64: 16, 16>}> : (tensor<4x8x29241x16x16xf32>, tensor<29241x128x64xf32>) -> tensor<29241x128x64xf32>
    "func.return"(%2) : (tensor<29241x128x64xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

