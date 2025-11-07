"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],si32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.cat$convert"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],f32>, %arg1: !torch.vtensor<[?,?],si32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch.vtensor<[?,?],f32>, !torch.vtensor<[?,?],si32>) -> !torch.list<vtensor>
    %2 = "torch.aten.cat"(%1, %0) : (!torch.list<vtensor>, !torch.int) -> !torch.vtensor<[?,?],f32>
    "func.return"(%2) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

