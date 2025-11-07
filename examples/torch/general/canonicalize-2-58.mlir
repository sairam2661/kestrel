"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[64],f32>) -> !torch.vtensor<[64],f32>, sym_name = "torch.prims.convert_element_type$fold"}> ({
  ^bb0(%arg0: !torch.vtensor<[64],f32>):
    %0 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch.int
    %1 = "torch.prims.convert_element_type"(%arg0, %0) : (!torch.vtensor<[64],f32>, !torch.int) -> !torch.vtensor<[64],f32>
    "func.return"(%1) : (!torch.vtensor<[64],f32>) -> ()
  }) : () -> ()
}) : () -> ()

