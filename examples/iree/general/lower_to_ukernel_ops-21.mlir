#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "all"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x7x8xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "unpack_f32f32_transpose_inner_and_outer"}> ({
  ^bb0(%arg0: tensor<?x?x7x8xf32>, %arg1: tensor<?x?xf32>):
    %0 = "linalg.unpack"(%arg0, %arg1) <{inner_dims_pos = array<i64: 1, 0>, outer_dims_perm = array<i64: 1, 0>, static_inner_tiles = array<i64: 7, 8>}> : (tensor<?x?x7x8xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

