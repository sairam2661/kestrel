"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.gelu"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>):
    %0 = "torch.constant.str"() <{value = "none"}> : () -> !torch.str
    %1 = "torch.aten.gelu"(%arg0, %0) : (!torch.vtensor<[?,?],f32>, !torch.str) -> !torch.vtensor<[?,?],f32>
    "func.return"(%1) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

