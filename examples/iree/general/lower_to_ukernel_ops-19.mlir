#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "all"}>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x7x8xf16>, tensor<?x?xf16>) -> tensor<?x?xf16>, sym_name = "unpack_f16f16"}> ({
  ^bb0(%arg0: tensor<?x?x7x8xf16>, %arg1: tensor<?x?xf16>):
    %0 = "linalg.unpack"(%arg0, %arg1) <{inner_dims_pos = array<i64: 0, 1>, static_inner_tiles = array<i64: 7, 8>}> : (tensor<?x?x7x8xf16>, tensor<?x?xf16>) -> tensor<?x?xf16>
    "func.return"(%0) : (tensor<?x?xf16>) -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

