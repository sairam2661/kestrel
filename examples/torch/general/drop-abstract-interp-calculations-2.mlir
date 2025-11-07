"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,?],unk>) -> !torch.vtensor<[2,?],unk>, sym_name = "shape_calc_in_loop"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,?],unk>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    "torch.prim.Loop"(%0, %2) ({
    ^bb0(%arg1: !torch.int):
      %3 = "torch.shape.calculate"() ({
        %6 = "torch.aten.tanh"(%arg0) : (!torch.vtensor<[2,?],unk>) -> !torch.vtensor<[2,?],unk>
        "torch.shape.calculate.yield"(%6) : (!torch.vtensor<[2,?],unk>) -> ()
      }, {
        %4 = "torch.aten.size.int"(%arg0, %0) : (!torch.vtensor<[2,?],unk>, !torch.int) -> !torch.int
        %5 = "torch.prim.ListConstruct"(%1, %4) : (!torch.int, !torch.int) -> !torch.list<int>
        "torch.shape.calculate.yield.shapes"(%5) : (!torch.list<int>) -> ()
      }) : () -> !torch.vtensor<[2,?],unk>
      "torch.prim.Loop.condition"(%2) : (!torch.bool) -> ()
    }) : (!torch.int, !torch.bool) -> ()
    "func.return"(%arg0) : (!torch.vtensor<[2,?],unk>) -> ()
  }) : () -> ()
}) : () -> ()

