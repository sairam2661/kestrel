"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,?],unk>) -> !torch.vtensor, sym_name = "basic$shape_calculate"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,?],unk>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.shape.calculate"() ({
      %6 = "torch.aten.tanh"(%arg0) : (!torch.vtensor<[2,?],unk>) -> !torch.vtensor<[2,?],unk>
      "torch.shape.calculate.yield"(%6) : (!torch.vtensor<[2,?],unk>) -> ()
    }, {
      %4 = "torch.aten.size.int"(%arg0, %1) : (!torch.vtensor<[2,?],unk>, !torch.int) -> !torch.int
      %5 = "torch.prim.ListConstruct"(%0, %4) : (!torch.int, !torch.int) -> !torch.list<int>
      "torch.shape.calculate.yield.shapes"(%5) : (!torch.list<int>) -> ()
    }) : () -> !torch.vtensor<[2,?],unk>
    %3 = "torch.tensor_static_info_cast"(%2) : (!torch.vtensor<[2,?],unk>) -> !torch.vtensor
    "func.return"(%3) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

