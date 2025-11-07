"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,5,6],f32>, !torch.vtensor<[4,0,6],f32>) -> !torch.vtensor<[4,5,6],f32>, sym_name = "aten_cat_zero"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,5,6],f32>, %arg1: !torch.vtensor<[4,0,6],f32>):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch.vtensor<[4,5,6],f32>, !torch.vtensor<[4,0,6],f32>) -> !torch.list<vtensor>
    %1 = "torch.constant.int"() <{value = -2 : i64}> : () -> !torch.int
    %2 = "torch.aten.cat"(%0, %1) : (!torch.list<vtensor>, !torch.int) -> !torch.vtensor<[4,5,6],f32>
    "func.return"(%2) : (!torch.vtensor<[4,5,6],f32>) -> ()
  }) : () -> ()
}) : () -> ()

