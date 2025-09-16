"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "set_mesh_outputs"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    "spirv.EXT.SetMeshOutputs"(%arg0, %arg1) : (i32, i32) -> ()
    "spirv.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

