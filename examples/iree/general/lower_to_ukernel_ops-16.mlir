#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "all"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi32>, tensor<?x?x7x8xi32>, i32) -> tensor<?x?x7x8xi32>, sym_name = "pack_i32i32_transpose_inner"}> ({
  ^bb0(%arg0: tensor<?x?xi32>, %arg1: tensor<?x?x7x8xi32>, %arg2: i32):
    %0 = "linalg.pack"(%arg0, %arg1, %arg2) <{inner_dims_pos = array<i64: 1, 0>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_inner_tiles = array<i64: 7, 8>}> : (tensor<?x?xi32>, tensor<?x?x7x8xi32>, i32) -> tensor<?x?x7x8xi32>
    "func.return"(%0) : (tensor<?x?x7x8xi32>) -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

