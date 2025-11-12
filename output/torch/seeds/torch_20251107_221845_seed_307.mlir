"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor) -> !torchtensor, sym_name = "complex_mixed_ops"}> ({
  ^bb0(%arg0: !torchtensor, %arg1: !torchtensor):
    %const_int = "torch.constant.int"() <{value = 42 : i32}> : () -> !torchtensor
    %const_str = "torch.constant.str"() <{value = "hello" : !torchstr}> : () -> !torchstr
    %size = "torch.aten.size.int"(%arg0) : (!torchtensor) -> i64
    %cond = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchtensor, !torchtensor) -> !torchtensor
    %cat = "torch.aten.cat"(%arg0, %arg1) : (!torchtensor, !torchtensor) -> !torchtensor
    %item = "torch.aten.item"(%const_int) : (!torchtensor) -> !torchtensor
    "func.return"(%cat) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()