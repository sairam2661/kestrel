"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[],f32>, !torch.int) -> !torch.vtensor<[?],f32>, sym_name = "torch.aten.broadcast_to$empty_input"}> ({
  ^bb0(%arg0: !torch.vtensor<[],f32>, %arg1: !torch.int):
    %0 = "torch.prim.ListConstruct"(%arg1) : (!torch.int) -> !torch.list<int>
    %1 = "torch.aten.broadcast_to"(%arg0, %0) : (!torch.vtensor<[],f32>, !torch.list<int>) -> !torch.vtensor<[?],f32>
    "func.return"(%1) : (!torch.vtensor<[?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

